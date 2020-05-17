	const_def
	const DEXSTATE_MAIN_SCR
	const DEXSTATE_UPDATE_MAIN_SCR
	const DEXSTATE_DEX_ENTRY_SCR
	const DEXSTATE_UPDATE_DEX_ENTRY_SCR
	const DEXSTATE_REINIT_DEX_ENTRY_SCR
	const DEXSTATE_SEARCH_SCR
	const DEXSTATE_UPDATE_SEARCH_SCR
	const DEXSTATE_OPTION_SCR
	const DEXSTATE_UPDATE_OPTION_SCR
	const DEXSTATE_SEARCH_RESULTS_SCR
	const DEXSTATE_UPDATE_SEARCH_RESULTS_SCR
	const DEXSTATE_UNOWN_MODE
	const DEXSTATE_UPDATE_UNOWN_MODE
	const DEXSTATE_EXIT

POKEDEX_SCY EQU 0
POKEDEX_SCX EQU 5
GLOBAL POKEDEX_SCX
GLOBAL POKEDEX_SCY

Pokedex: ; 40000
	ldh a, [hWX]
	ld l, a
	ldh a, [hWY]
	ld h, a
	push hl
	ldh a, [hSCX]
	push af
	ld hl, wOptions1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld a, [wVramState]
	push af
	xor a
	ld [wVramState], a
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a

	xor a
	ldh [hMapAnims], a
	call InitPokedex
	call DelayFrame

.main
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .exit
	call Pokedex_RunJumptable
	call DelayFrame
	jr .main

.exit
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	call ClearSprites
	;ld a, [wCurrentDexMode]
	;ld [wLastDexMode], a

	pop af
	ldh [hInMenu], a
	pop af
	ld [wVramState], a
	pop af
	ld [wOptions1], a
	pop af
	ldh [hSCX], a
	pop hl
	ld a, l
	ldh [hWX], a
	ld a, h
	ldh [hWY], a
	ret

InitPokedex: ; 40063
	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap
	call Pokedex_LoadGFX

	ld hl, wPokedexDataStart
	ld bc, wPokedexDataEnd - wPokedexDataStart
	xor a
	call ByteFill

	xor a
	ld [wJumptableIndex], a
	ld [wDexEntryPrevJumptableIndex], a
	ld [wcf65], a
	ld [wcf66], a

	call Pokedex_CheckUnlockedUnownMode

	xor a
	;ld a, [wLastDexMode]
	ld [wCurrentDexMode], a

	call Pokedex_OrderMonsByMode
	call Pokedex_InitCursorPosition
	call GetCurrentLandmark
	ld [wDexCurrentLocation], a
	call Pokedex_DrawDexEntryScreenRightEdge
	jp Pokedex_ResetBGMapMode

Pokedex_CheckUnlockedUnownMode: ; 400a2
	ld a, [wStatusFlags]
	bit 1, a
	jr nz, .unlocked

	xor a
	ld [wUnlockedUnownMode], a
	ret

.unlocked
	ld a, TRUE
	ld [wUnlockedUnownMode], a
	ret

Pokedex_InitCursorPosition: ; 400b4
	ld a, [wCurrentDexMode]
	cp DEXMODE_VARIANT

	jp nz, .skip_overflow_check ; make sure we don't display blank entries that should be past where one can scroll
	ld a, 1
	ld [wLastDexEntry], a
.skip_overflow_check
	ld hl, wPokedexOrder
	ld a, [wLastDexEntry]
	and a
	ret z
	cp NUM_POKEMON + 1
	ret nc

	ld b, a
	ld a, [wDexListingEnd]
	cp $4
	jr c, .only_one_page

	sub $3
	ld c, a
.loop1
	ld a, BANK(wPokedexOrder)
	call GetFarWRAMByte
	cp b
	ret z
	inc hl
	inc hl
	inc hl
	ld a, [wDexListingScrollOffset]
	inc a
	ld [wDexListingScrollOffset], a
	dec c
	jr nz, .loop1

.only_one_page
	ld c, $3
.loop2
	ld a, BANK(wPokedexOrder)
	call GetFarWRAMByte
	cp b
	ret z
	inc hl
	ld a, [wDexListingCursor]
	inc a
	ld [wDexListingCursor], a
	dec c
	jr nz, .loop2
	ret

Pokedex_RunJumptable: ; 4010b
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call Pokedex_LoadPointer
	jp hl


.Jumptable: ; 40115 (10:4115)
	dw Pokedex_InitMainScreen
	dw Pokedex_UpdateMainScreen
	dw Pokedex_InitDexEntryScreen
	dw Pokedex_UpdateDexEntryScreen
	dw Pokedex_ReinitDexEntryScreen
	dw Pokedex_InitSearchScreen
	dw Pokedex_UpdateSearchScreen
	dw Pokedex_InitOptionScreen
	dw Pokedex_UpdateOptionScreen
	dw Pokedex_InitSearchResultsScreen
	dw Pokedex_UpdateSearchResultsScreen
	dw Pokedex_Exit ;Pokedex_InitUnownMode ;these need to be reworked
	dw Pokedex_Exit ;Pokedex_UpdateUnownMode
	dw Pokedex_Exit


Pokedex_IncrementDexPointer: ; 40131 (10:4131)
	ld hl, wJumptableIndex
	inc [hl]
	ret

Pokedex_Exit: ; 40136 (10:4136)
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

Pokedex_InitMainScreen: ; 4013c (10:413c)
	ld a, $1
	ldh [rVBK], a

	ld hl, PokedexTypes
	ld bc, 4 * LEN_1BPP_TILE * 18
	ld d, h
	ld e, l
	ld hl, VTiles5 tile $00
	lb bc, BANK(PokedexTypes), 4*18
	call Request2bpp

	xor a
	ldh [rVBK], a
	ldh [hBGMapMode], a
	call ClearSprites
	ld de, wSprites+(17*4)
	ld hl, PokedexPokemonIconSprites
	ld bc, PokedexPokemonIconSpritesEnd - PokedexPokemonIconSprites
	rst CopyBytes
	xor a
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	call ByteFill
	call Pokedex_DrawListWindow
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	call Pokedex_SetBGMapMode4
	call Pokedex_ResetBGMapMode
	call Pokedex_DrawMainScreenBG
	call Pokedex_PrintTotalEncounters
	ld a, POKEDEX_SCX
	ldh [hSCX], a
	ld a, POKEDEX_SCY
	ldh [hSCY], a

	ld a, $0f
	ldh [hWX], a
	ld a, $40
	ldh [hWY], a
	call ApplyTilemapInVBlank

	call Pokedex_ResetBGMapMode
	ld a, -1
	ld [wCurPartySpecies], a
	xor a
	ld [wDexMonShiny], a
	call Pokedex_UpdateCursorOAM
	call Pokedex_DrawListWindow
	hlcoord 0, 17
	call Pokedex_PrintListing
	call Pokedex_IncrementDexPointer
	ld a, CGB_POKEDEX
	call Pokedex_GetCGBLayout
	jp Pokedex_DrawListWindow

POKEDEX_ICONS_X EQU $0f
POKEDEX_ICONS_Y EQU $58
POKEDEX_ICONS_FIRST_ICON_TILE EQU $40
POKEDEX_ICONS_FIRST_ICON_LENGTH EQU 14

PokedexPokemonIconSprites:
	db POKEDEX_ICONS_Y, POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE, 2
	db POKEDEX_ICONS_Y, POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+1, 2
	db POKEDEX_ICONS_Y+(1*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+2, 2
	db POKEDEX_ICONS_Y+(1*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+3, 2

	db POKEDEX_ICONS_Y+(2*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+POKEDEX_ICONS_FIRST_ICON_LENGTH, 3
	db POKEDEX_ICONS_Y+(2*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+POKEDEX_ICONS_FIRST_ICON_LENGTH+1, 3
	db POKEDEX_ICONS_Y+(2*8)+(1*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+POKEDEX_ICONS_FIRST_ICON_LENGTH+2, 3
	db POKEDEX_ICONS_Y+(2*8)+(1*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+POKEDEX_ICONS_FIRST_ICON_LENGTH+3, 3

	db POKEDEX_ICONS_Y+(4*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*2), 4
	db POKEDEX_ICONS_Y+(4*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*2)+1, 4
	db POKEDEX_ICONS_Y+(4*8)+(1*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*2)+2, 4
	db POKEDEX_ICONS_Y+(4*8)+(1*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*2)+3, 4

	db POKEDEX_ICONS_Y+(6*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*3), 5
	db POKEDEX_ICONS_Y+(6*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*3)+1, 5
	db POKEDEX_ICONS_Y+(6*8)+(1*8), POKEDEX_ICONS_X, POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*3)+2, 5
	db POKEDEX_ICONS_Y+(6*8)+(1*8), POKEDEX_ICONS_X+(1*8), POKEDEX_ICONS_FIRST_ICON_TILE+(POKEDEX_ICONS_FIRST_ICON_LENGTH*3)+3, 5
PokedexPokemonIconSpritesEnd:

Pokedex_UpdateMainScreen: ; 401ae (10:41ae)
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b
	ld a, [hl]
	and A_BUTTON
	jr nz, .a
	ld a, [hl]
	and SELECT
	jr nz, .select
	ld a, [hl]
	and START
	jr nz, .start
	call Pokedex_ListingHandleDPadInput
	ret nc
	call Pokedex_UpdateCursorOAM
	xor a
	ldh [hBGMapMode], a
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	call Pokedex_SetBGMapMode4
	call Pokedex_ResetBGMapMode
	call Pokedex_ResetBGMapMode
	ld a, CGB_POKEDEX
	call Pokedex_GetCGBLayout
	jp Pokedex_DrawListWindow


.a
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	ret z
	ld a, DEXSTATE_DEX_ENTRY_SCR
	ld [wJumptableIndex], a
	ld a, DEXSTATE_MAIN_SCR
	ld [wDexEntryPrevJumptableIndex], a
	ret

.select
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_OPTION_SCR
	ld [wJumptableIndex], a
	xor a
	ldh [hSCX], a
	ld a, $a7
	ldh [hWX], a
	jp DelayFrame

.start
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_SEARCH_SCR
	ld [wJumptableIndex], a
	xor a
	ldh [hSCX], a
	ld a, $a7
	ldh [hWX], a
	jp DelayFrame

.b
	ld a, DEXSTATE_EXIT
	ld [wJumptableIndex], a
	ret

Pokedex_PrintTotalEncounters:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wTotalEncounters)
	ldh [rSVBK], a

	hlcoord 9, 4
	ld de, StringEncounters
	call PlaceString
	ld de, wTotalEncounters
	hlcoord 10, 5
	ld c, 7
	ld b, 2 | PRINTNUM_LEFTALIGN
	predef PrintNum

	hlcoord 9, 6
	ld de, StringThisCycle
	call PlaceString
	ld de, wTotalEncountersThisCycle
	hlcoord 10, 7
	ld c, 7
	ld b, 2 | PRINTNUM_LEFTALIGN
	predef PrintNum

	pop af
	ldh [rSVBK], a
	ret

StringEncounters:
	db "Total Encounters@"
StringThisCycle
	db "On This Cycle@"

Pokedex_InitDexEntryScreen: ; 40217 (10:4217)
	call LowVolume
	xor a
	ld [wPokedexStatus], a
	ld [wDexSearchSlowpokeFrame], a
	ldh [hBGMapMode], a
	call ClearSprites
	call Pokedex_LoadCurrentFootprint
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_InitArrowCursor
	call Pokedex_GetSelectedMon
	ld [wLastDexEntry], a
	farcall DisplayDexEntry
	call Pokedex_DrawFootprint
	call ApplyTilemapInVBlank
	ld a, $a7
	ldh [hWX], a
	call Pokedex_GetSelectedMon
	ld [wCurPartySpecies], a
	xor a
	ld [wDexMonShiny], a
	ld a, CGB_POKEDEX
	call Pokedex_GetCGBLayout
	ld a, 1
	ld [hCGBPalUpdate], a
	call DelayFrame
	ld a, [wCurPartySpecies]
	call PlayCry
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateDexEntryScreen: ; 40258 (10:4258)

	ld a, [wCelebiEvent]
	bit 4, a ; ENGINE_HAVE_SHINY_CHARM
	ld de, DexEntryScreen_ArrowCursorData_ShinyCharm
	jr nz, .ok
	ld de, DexEntryScreen_ArrowCursorData
.ok
	call Pokedex_MoveArrowCursor
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .return_to_prev_screen
	ld a, [hl]
	and A_BUTTON
	jr nz, .do_menu_action
	call Pokedex_NextOrPreviousDexEntry
	ret nc
	jp Pokedex_IncrementDexPointer

.do_menu_action
	ld a, [wDexArrowCursorPosIndex]
	ld hl, DexEntryScreen_MenuActionJumptable
	call Pokedex_LoadPointer
	jp hl

.return_to_prev_screen
	ld a, [wLastVolume]
	and a
	jr z, .max_volume
	ld a, $77
	ld [wLastVolume], a

.max_volume
	call MaxVolume
	ld a, [wDexEntryPrevJumptableIndex]
	ld [wJumptableIndex], a
	ret

Pokedex_Page: ; 40292
	xor a
	ld [wDexSearchSlowpokeFrame], a
	ld a, [wPokedexStatus]
	inc a
	jr nz, .nextpage
	xor a
.nextpage
	ld [wPokedexStatus], a
	call Pokedex_GetSelectedMon
	ld [wLastDexEntry], a
	farcall DisplayDexEntry
	jp ApplyTilemapInVBlank

Pokedex_ReinitDexEntryScreen: ; 402aa (10:42aa)
; Reinitialize the Pokédex entry screen after changing the selected mon.
	call Pokedex_BlackOutBG
	xor a
	ld [wPokedexStatus], a
	ld [wDexSearchSlowpokeFrame], a
	ldh [hBGMapMode], a
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_InitArrowCursor
	call Pokedex_LoadCurrentFootprint
	call Pokedex_GetSelectedMon
	ld [wLastDexEntry], a
	farcall DisplayDexEntry
	call Pokedex_DrawFootprint
	call Pokedex_LoadSelectedMonTiles
	call ApplyTilemapInVBlank
	call Pokedex_GetSelectedMon
	ld [wCurPartySpecies], a
	ld a, CGB_POKEDEX
	call Pokedex_GetCGBLayout
	ld a, [wCurPartySpecies]
	call PlayCry
	ld hl, wJumptableIndex
	dec [hl]
	ret

DexEntryScreen_ArrowCursorData: ; 402e8
	db D_RIGHT | D_LEFT, 3
	dwcoord 1, 17
	dwcoord 5, 17
	dwcoord 9, 17

DexEntryScreen_ArrowCursorData_ShinyCharm:
	db D_RIGHT | D_LEFT, 4
	dwcoord 1, 17
	dwcoord 5, 17
	dwcoord 9, 17
	dwcoord 12, 17

DexEntryScreen_MenuActionJumptable: ; 402f2
	dw Pokedex_Page
	dw .Area
	dw .Cry
	dw .Shiny

.Area: ; 402fa
	call Pokedex_BlackOutBG
	xor a
	ldh [hSCX], a
	;call DelayFrame
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	call Pokedex_GetSelectedMon
	ld a, [wDexCurrentLocation]
	ld e, a
	predef _Area
	call Pokedex_BlackOutBG
	call DelayFrame
	xor a
	ldh [hBGMapMode], a
	ld a, $90
	ldh [hWY], a
	ld a, $5
	ldh [hSCX], a
	call DelayFrame
	call Pokedex_RedisplayDexEntry
	call Pokedex_LoadSelectedMonTiles
	call ApplyTilemapInVBlank
	call Pokedex_GetSelectedMon
	ld [wCurPartySpecies], a
	ld a, CGB_POKEDEX
	jp Pokedex_GetCGBLayout

.Cry: ; 40340
	ld a, [wCurPartySpecies]
	jp PlayCry

.Shiny:
	ld hl, wDexMonShiny
	ld a, [hl]
	xor SHINY_MASK ; alternate 0 and SHINY_MASK
	ld [hl], a
	ld a, [wCurPartySpecies]
	ld a, CGB_POKEDEX
	jp Pokedex_GetCGBLayout

Pokedex_RedisplayDexEntry: ; 4038d
	call Pokedex_LoadGFX
	call Pokedex_LoadAnyFootprint
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_GetSelectedMon
	farcall DisplayDexEntry
	jp Pokedex_DrawFootprint

Pokedex_InitOptionScreen: ; 4039d (10:439d)
	call OtherVariableWidthText
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call Pokedex_DrawOptionScreenBG
	call Pokedex_InitArrowCursor
	ld a, [wCurrentDexMode]
	ld [wDexArrowCursorPosIndex], a
	call Pokedex_DisplayModeDescription
	call ApplyTilemapInVBlank
	ld a, CGB_POKEDEX_SEARCH_OPTION
	call Pokedex_GetCGBLayout
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateOptionScreen: ; 403be (10:43be)
	ld a, [wUnlockedUnownMode]
	and a
	jr nz, .okay
	ld de, .NoUnownModeArrowCursorData
	jr .okay2
.okay
	ld de, .ArrowCursorData
.okay2
	call Pokedex_MoveArrowCursor
	call c, Pokedex_DisplayModeDescription
	ld hl, hJoyPressed
	ld a, [hl]
	and SELECT | B_BUTTON
	jr nz, .return_to_main_screen
	ld a, [hl]
	and A_BUTTON
	jr nz, .do_menu_action
	ret

.do_menu_action
	ld a, [wDexArrowCursorPosIndex]
	ld hl, .MenuActionJumptable
	call Pokedex_LoadPointer
	jp hl

.return_to_main_screen
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

.NoUnownModeArrowCursorData: ; 403f3
	db D_UP | D_DOWN, 3
	dwcoord 2,  4
	dwcoord 2,  6
	dwcoord 2,  8

.ArrowCursorData: ; 403fb
	db D_UP | D_DOWN, 4
	dwcoord 2,  4
	dwcoord 2,  6
	dwcoord 2,  8
	dwcoord 2, 10

.MenuActionJumptable: ; 40405 (10:4405)
	dw .MenuAction_RegionalMode
	dw .MenuAction_VariantMode
	dw .MenuAction_ABCMode
	dw .MenuAction_UnownMode

.MenuAction_RegionalMode: ; 4040d (10:440d)
	ld b, DEXMODE_REGIONAL
	jr .ChangeMode

.MenuAction_VariantMode: ; 40411 (10:4411)
	ld a, [wPokedexRegion]
	inc a
	cp GROUP_GENERATION_EIGHT + 1 ; the max dex group
	jr c, .next_group
	ld a, GROUP_GENERATION_ONE
.next_group
	ld [wPokedexRegion], a
	;ld [wDexMonGroup], a
	ld [wCurGroup], a
	ld b, DEXMODE_VARIANT
	jr .force_change_mode

.MenuAction_ABCMode: ; 40415 (10:4415)
	ld b, DEXMODE_ABC

.ChangeMode: ; 40417 (10:4417)
	ld a, [wCurrentDexMode]
	cp b
	jr z, .skip_changing_mode ; Skip if new mode is same as current.
.force_change_mode
	ld a, b
	ld [wCurrentDexMode], a
	call Pokedex_OrderMonsByMode
	call Pokedex_DisplayChangingModesMessage
	xor a
	ld [wDexListingScrollOffset], a
	ld [wDexListingCursor], a
	call Pokedex_InitCursorPosition

.skip_changing_mode
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

.MenuAction_UnownMode: ; 4043a (10:443a)
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_UNOWN_MODE
	ld [wJumptableIndex], a
	ret

Pokedex_InitSearchScreen: ; 40443 (10:4443)
	ld a, CGB_POKEDEX_SEARCH_OPTION
	call Pokedex_GetCGBLayout

	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call Pokedex_DrawSearchScreenBG
	call Pokedex_InitArrowCursor
	ld a, NORMAL + 1
	ld [wDexSearchMonType1], a
	xor a
	ld [wDexSearchMonType2], a
	call Pokedex_PlaceSearchScreenTypeStrings
	call Pokedex_SetBGMapMode1
	call Pokedex_SetBGMapMode2
	call Pokedex_ResetBGMapMode
	xor a
	ld [wDexSearchSlowpokeFrame], a
	farcall DoDexSearchSlowpokeFrame
	call ApplyTilemapInVBlank
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateSearchScreen: ; 40471 (10:4471)
	ld de, .ArrowCursorData
	call Pokedex_MoveArrowCursor
	call Pokedex_UpdateSearchMonType
	call c, Pokedex_PlaceSearchScreenTypeStrings
	call Pokedex_SetBGMapMode1
	call Pokedex_SetBGMapMode2
	call Pokedex_ResetBGMapMode

	ld hl, hJoyPressed
	ld a, [hl]
	and START | B_BUTTON
	jr nz, .cancel
	ld a, [hl]
	and A_BUTTON
	ret z

	ld a, [wDexArrowCursorPosIndex]
	ld hl, .MenuActionJumptable
	call Pokedex_LoadPointer
	jp hl

.cancel
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

.ArrowCursorData: ; 4049e
	db D_UP | D_DOWN, 4
	dwcoord 2, 4
	dwcoord 2, 6
	dwcoord 2, 13
	dwcoord 2, 15

.MenuActionJumptable: ; 404a8
	dw .MenuAction_MonSearchType
	dw .MenuAction_MonSearchType
	dw .MenuAction_BeginSearch
	dw .MenuAction_Cancel

.MenuAction_MonSearchType: ; 404b0
	call Pokedex_NextSearchMonType
	call Pokedex_PlaceSearchScreenTypeStrings
	call Pokedex_SetBGMapMode1
	call Pokedex_SetBGMapMode2
	jp Pokedex_ResetBGMapMode
.MenuAction_BeginSearch: ; 404b7
	call Pokedex_SearchForMons
	farcall AnimateDexSearchSlowpoke
	ld a, [wDexSearchResultCount]
	and a
	jr nz, .show_search_results

; No mon with matching types was found.
	call Pokedex_OrderMonsByMode
	call Pokedex_DisplayTypeNotFoundMessage
	xor a
	ldh [hBGMapMode], a
	call Pokedex_DrawSearchScreenBG
	call Pokedex_InitArrowCursor
	call Pokedex_PlaceSearchScreenTypeStrings
	call Pokedex_SetBGMapMode1
	call Pokedex_SetBGMapMode2
	call Pokedex_ResetBGMapMode
	jp ApplyTilemapInVBlank

.show_search_results
	ld [wDexListingEnd], a
	ld a, [wDexListingScrollOffset]
	ld [wDexListingScrollOffsetBackup], a
	ld a, [wDexListingCursor]
	ld [wDexListingCursorBackup], a
	ld a, [wLastDexEntry]
	ld [wcf65], a
	xor a
	ld [wDexListingScrollOffset], a
	ld [wDexListingCursor], a
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_SEARCH_RESULTS_SCR
	ld [wJumptableIndex], a
	ret

.MenuAction_Cancel: ; 40501
	call Pokedex_BlackOutBG
	ld a, DEXSTATE_MAIN_SCR
	ld [wJumptableIndex], a
	ret

Pokedex_InitSearchResultsScreen: ; 4050a (10:450a)
	xor a
	ldh [rVBK], a
	ldh [hBGMapMode], a
	call ClearSprites

	xor a
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	call ByteFill
	call Pokedex_DrawListWindow
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	call Pokedex_SetBGMapMode4
	call Pokedex_ResetBGMapMode
	call Pokedex_DrawSearchResultsScreenBG
	ld a, $5
	ldh [hSCX], a
	ld a, $0f
	ldh [hWX], a
	ld a, $40
	ldh [hWY], a

	call Pokedex_UpdateCursorOAM
	call Pokedex_PlaceSearchResultsTypeStrings
	call Pokedex_SetBGMapMode1
	call Pokedex_SetBGMapMode2
	call Pokedex_ResetBGMapMode
	call ApplyTilemapInVBlank
	call Pokedex_ResetBGMapMode

	call Pokedex_UpdateCursorOAM
	hlcoord 0, 17
	call Pokedex_PrintListing
	ld a, CGB_POKEDEX
	call Pokedex_GetCGBLayout
	call Pokedex_DrawListWindow
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateSearchResultsScreen: ; 40562 (10:4562)
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .return_to_search_screen
	ld a, [hl]
	and A_BUTTON
	jr nz, .go_to_dex_entry
	call Pokedex_ListingHandleDPadInput
	ret nc
	call Pokedex_UpdateCursorOAM
	xor a
	ldh [hBGMapMode], a
	call Pokedex_PrintListing
	call Pokedex_SetBGMapMode3
	call Pokedex_SetBGMapMode4
	call Pokedex_ResetBGMapMode
	jp Pokedex_ResetBGMapMode

.go_to_dex_entry
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	ret z
	ld a, DEXSTATE_DEX_ENTRY_SCR
	ld [wJumptableIndex], a
	ld a, DEXSTATE_SEARCH_RESULTS_SCR
	ld [wDexEntryPrevJumptableIndex], a
	ret

.return_to_search_screen
	ld a, [wDexListingScrollOffsetBackup]
	ld [wDexListingScrollOffset], a
	ld a, [wDexListingCursorBackup]
	ld [wDexListingCursor], a
	ld a, [wcf65]
	ld [wLastDexEntry], a
	call Pokedex_BlackOutBG
	call ClearSprites
	call Pokedex_OrderMonsByMode
	ld a, DEXSTATE_SEARCH_SCR
	ld [wJumptableIndex], a
	xor a
	ldh [hSCX], a
	ld a, $a7
	ldh [hWX], a
	ret

Pokedex_InitUnownMode: ; 405bd (10:45bd)
	call Pokedex_LoadUnownFont
	call Pokedex_DrawUnownModeBG
	xor a
	ld [wDexCurrentUnownIndex], a
	call Pokedex_LoadUnownFrontpicTiles
	call Pokedex_UnownModePlaceCursor
	;farcall PrintUnownWord
	call ApplyTilemapInVBlank
	ld a, CGB_POKEDEX_UNOWN_MODE
	call Pokedex_GetCGBLayout
	jp Pokedex_IncrementDexPointer

Pokedex_UpdateUnownMode: ; 405df (10:45df)
	ld hl, hJoyPressed
	ld a, [hl]
	and A_BUTTON | B_BUTTON
	jr z, Pokedex_UnownModeHandleDPadInput
	call Pokedex_BlackOutBG
	ld a, [wOptionsBuffer]
	ld [wOptions2], a
	xor a
	ld [wOptionsBuffer], a
	call LoadStandardFont
	ld a, DEXSTATE_OPTION_SCR
	ld [wJumptableIndex], a
	call DelayFrame
	ld hl, PokedexLZ
	ld de, VTiles2 tile $31
	lb bc, BANK(PokedexLZ), $34
	jp DecompressRequest2bpp

Pokedex_UnownModeHandleDPadInput: ; 40610 (10:4610)
	ld hl, hJoyLast
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ret

.right
	ld a, [wDexUnownCount]
	ld e, a
	ld hl, wDexCurrentUnownIndex
	ld a, [hl]
	inc a
	cp e
	ret nc
	ld a, [hl]
	inc [hl]
	jr .update

.left
	ld hl, wDexCurrentUnownIndex
	ld a, [hl]
	and a
	ret z
	ld a, [hl]
	dec [hl]

.update
	push af
	xor a
	ldh [hBGMapMode], a
	pop af
	call Pokedex_UnownModeEraseCursor
	call Pokedex_LoadUnownFrontpicTiles
	call Pokedex_UnownModePlaceCursor
	;farcall PrintUnownWord
	ld a, $1
	ldh [hBGMapMode], a
	call DelayFrame
	jp DelayFrame

Pokedex_UnownModeEraseCursor: ; 40654 (10:4654)
	ld c, " "
	jr Pokedex_UnownModeUpdateCursorGfx

Pokedex_UnownModePlaceCursor: ; 40658 (10:4658)
	ld a, [wDexCurrentUnownIndex]
	ld c, "." ; diamond cursor

Pokedex_UnownModeUpdateCursorGfx: ; 4065d (10:465d)
	ld e, a
	ld d, 0
	ld hl, UnownModeLetterAndCursorCoords + 2
rept 4
	add hl, de
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], c
	ret

Pokedex_NextOrPreviousDexEntry: ; 4066c (10:466c)
	ld a, [wDexListingCursor]
	ld [wBackupDexListingCursor], a
	ld a, [wDexListingScrollOffset]
	ld [wBackupDexListingPage], a
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .up
	ld a, [hl]
	and D_DOWN
	jr nz, .down
	and a
	ret

.up
	ld a, 4
	ld d, a
	ld a, [wDexListingEnd]
	ld e, a
	call Pokedex_ListingMoveCursorUp
	jr nc, .nope
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	jr nz, .yep
	jr .up

.down
	ld a, 4
	ld d, a
	ld a, [wDexListingEnd]
	ld e, a
	call Pokedex_ListingMoveCursorDown
	jr nc, .nope
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	jr nz, .yep
	jr .down

.yep
	scf
	ret

.nope
	ld a, [wBackupDexListingCursor]
	ld [wDexListingCursor], a
	ld a, [wBackupDexListingPage]
	ld [wDexListingScrollOffset], a
	and a
	ret

Pokedex_ListingHandleDPadInput: ; 406c5 (10:46c5)
; Handles D-pad input for a list of Pokémon.
	ld a, 4
	ld d, a
	ld a, [wDexListingEnd]
	ld e, a
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, Pokedex_ListingMoveCursorUp
	ld a, [hl]
	and D_DOWN
	jr nz, Pokedex_ListingMoveCursorDown
	ld a, d
	cp e
	jr nc, Pokedex_ListingPosStayedSame
	ld a, [hl]
	and D_LEFT
	jr nz, Pokedex_ListingMoveUpOnePage
	ld a, [hl]
	and D_RIGHT
	jr nz, Pokedex_ListingMoveDownOnePage
	jr Pokedex_ListingPosStayedSame

Pokedex_ListingMoveCursorUp: ; 406ea (10:46ea)
	ld hl, wDexListingCursor
	ld a, [hl]
	and a
	jr z, .try_scrolling
	dec [hl]
	jr Pokedex_ListingPosChanged
.try_scrolling
	ld hl, wDexListingScrollOffset
	ld a, [hl]
	and a
	jr z, Pokedex_ListingPosStayedSame
	dec [hl]
	jr Pokedex_ListingPosChanged

Pokedex_ListingMoveCursorDown: ; 406fe (10:46fe)
	ld hl, wDexListingCursor
	ld a, [hl]
	inc a
	cp e
	jr nc, Pokedex_ListingPosStayedSame
	cp d
	jr nc, .try_scrolling
	inc [hl]
	jr Pokedex_ListingPosChanged
.try_scrolling
	ld hl, wDexListingScrollOffset
	add [hl]
	cp e
	jr nc, Pokedex_ListingPosStayedSame
	inc [hl]
	jr Pokedex_ListingPosChanged

Pokedex_ListingMoveUpOnePage: ; 40716 (10:4716)
	ld hl, wDexListingScrollOffset
	ld a, [hl]
	and a
	jr z, Pokedex_ListingPosStayedSame
	cp d
	jr nc, .not_near_top
; If we're already less than page away from the top, go to the top.
	xor a
	ld [hl], a
	jr Pokedex_ListingPosChanged
.not_near_top
	sub d
	ld [hl], a
	jr Pokedex_ListingPosChanged

Pokedex_ListingMoveDownOnePage: ; 40728 (10:4728)
; When moving down a page, the return value always report a change in position.
	ld hl, wDexListingScrollOffset
	ld a, d
	add a
	add [hl]
	jr c, .near_bottom
	cp e
	jr c, .not_near_bottom
.near_bottom
	ld a, e
	sub d
	ld [hl], a
	jr Pokedex_ListingPosChanged
.not_near_bottom
	ld a, [hl]
	add d
	ld [hl], a
	jr Pokedex_ListingPosChanged

Pokedex_ListingPosStayedSame: ; 4073d (10:473d)
	and a
	ret

Pokedex_ListingPosChanged: ; 4073f (10:473f)
	scf
	ret

Pokedex_FillColumn: ; 40741
; Fills a column starting at HL, going downwards.
; B is the height of the column and A is the tile it's filled with.
	push de
	ld de, SCREEN_WIDTH
.loop
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	pop de
	ret

DEX_WINDOW_WIDTH 	EQU 19
DEX_WINDOW_HEIGHT 	EQU 8

PokedexCountSeenCaught::
	xor a
	ld [wPokedexSeenCaughtCount], a
	ld [wPokedexSeenCaughtCount +1 ], a

.next
	ld e, 1
	ld d, 8
.count
	ld a, [hl]
	and e
	call nz, .inc_PokedexSeenCaughtCount
	rrc e
	dec d
	jr nz, .count

	inc hl
	dec bc
	ld a, c
	and a
	jr nz, .next
	ld a, b
	and a
	jr nz, .next
	ret

.inc_PokedexSeenCaughtCount
	push hl
	ld hl, wPokedexSeenCaughtCount + 1
	inc [hl]
	jr nz, .doneinc
	dec hl
	inc [hl]
.doneinc
	pop hl
	ret

Pokedex_DrawMainScreenBG: ; 4074c (10:474c)
; Draws the left sidebar and the bottom bar on the main screen.
	call Pokedex_DrawBasicMainScreen
	hlcoord 9, 1

	ldh a, [rSVBK]
	push af ; 1
	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a
	VWTextStart $a0
	call InitVariableWidthTiles

	ld de, String_SEEN
	call PlaceString
	ld hl, wPokedexSeen
	ld bc, wPokedexSeenEnd - wPokedexSeen
	call PokedexCountSeenCaught
	ld de, wPokedexSeenCaughtCount
	hlcoord 10, 2
	lb bc, 2 | PRINTNUM_LEFTALIGN, 4
	predef PrintNum
	hlcoord 14, 1
	ld de, String_OWN
	call PlaceString
	ld hl, wPokedexCaught
	ld bc, wPokedexCaughtEnd - wPokedexCaught
	call PokedexCountSeenCaught
	ld de, wPokedexSeenCaughtCount
	hlcoord 15, 2
	lb bc, 2 | PRINTNUM_LEFTALIGN, 4
	predef PrintNum

	pop af ; 0
	ldh [rSVBK], a

	hlcoord 8, 3
	ld a, $65
	ld [hli], a
	ld a, $67
	ld bc, 10
	call ByteFill
	ld a, $5f
	ld [hl], a
	jp Pokedex_PlaceFrontpicTopLeftCorner

Pokedex_DrawBasicMainScreen:
	ld a, $32
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call ByteFill
	hlcoord 0, 0
	lb bc, 7, 7
	call Pokedex_PlaceBorder
	hlcoord 8, 0
	lb bc, 7, 10
	call Pokedex_PlaceBorder
	hlcoord 0, 8
	lb bc, DEX_WINDOW_HEIGHT, DEX_WINDOW_WIDTH
	call Pokedex_PlaceBorder
	hlcoord 0, 8
	ld a, $66
	ld [hl], a
	inc hl
	inc a ;$67
	ld [hl], a
	hlcoord 8, 0
	ld a, $59
	ld [hl], a
	inc a ; $5a
	hlcoord 8, 1
	ld b, 7
	call Pokedex_FillColumn
	hlcoord $13, 0
	ld a, $5e
	ld [hl], a
	dec a ;$5d
	ld b, 7
	hlcoord $13, 1
	jp Pokedex_FillColumn

String_SEEN: ; 407e1
	db "Seen@"
String_OWN: ; 407e6
	db "Caught@"
String_SELECT_OPTION: ; 407ea
;	db $3b, $48, $49, $4a, $44, $45, $46, $47 ; SELECT > OPTION
	db $3b, $41, $42, $43, $44, $45, $46, $47
String_START_SEARCH: ; 407f2
;	db $3c, $3b, $41, $42, $43, $4b, $4c, $4d, $4e, $3c, $ff ; START > SEARCH
	db $48, $3b, $49, $4a, $4b, $4c, $4d, $4e, $5d, $5e, $ff

Pokedex_DrawDexEntryScreenBG: ; 407fd
	VWTextStart $d0
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 0
	lb bc, 15, 18
	call Pokedex_PlaceBorder
	hlcoord 19, 0
	ld [hl], $34
	hlcoord 19, 1
	ld a, " "
	ld b, 15
	call Pokedex_FillColumn
	ld [hl], $39
	hlcoord 1, 10
	ld bc, 19
	ld a, $5f ; horizontal divider
	call ByteFill
	hlcoord 1, 17
	ld bc, 19
	ld a, " "
	call ByteFill
	hlcoord 0, 17
	ld a, $3b
	ld [hli], a
	inc hl
	ld de, .Page
	call PlaceString
	hlcoord 6, 17
	ld de, .Area
	call PlaceString
	hlcoord 10, 17
	ld de, .Cry
	call PlaceString
	ld a, [wCelebiEvent]
	bit 4, a ; ENGINE_HAVE_SHINY_CHARM
	jr z, .ok
	hlcoord 13, 17
	ld de, .Shiny
	call PlaceString
.ok
	jp Pokedex_PlaceFrontpicTopLeftCorner

.Page:
	db "Page@"
.Area:
	db "Area@"
.Cry:
	db "Cry@"
.Shiny:
	db "Shiny@"

Pokedex_DrawDexEntryScreenRightEdge: ; 1de247
	ldh a, [hBGMapAddress]
	ld l, a
	ldh a, [hBGMapAddress + 1]
	ld h, a
	push hl
	inc hl
	ld a, l
	ldh [hBGMapAddress], a
	ld a, h
	ldh [hBGMapAddress + 1], a
	hlcoord 19, 0
	ld [hl], $60
	hlcoord 19, 1
	ld a, $61
	ld b, 15
	call Pokedex_FillColumn
	ld [hl], $62
	hlcoord 19, 17
	ld [hl], $3c
	xor a
	ld b, SCREEN_HEIGHT
	hlcoord 19, 0, wAttrMap
	call Pokedex_FillColumn
	call ApplyAttrAndTilemapInVBlank
	pop hl
	ld a, l
	ldh [hBGMapAddress], a
	ld a, h
	ldh [hBGMapAddress + 1], a
	ret

Pokedex_DrawOptionScreenBG: ; 4087c (10:487c)
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 2
	lb bc, 8, 18
	call Pokedex_PlaceBorder
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	hlcoord 0, 1
	ld a, $3b
	ld [hli], a
	ld de, .Title
	call PlaceString
	ld h, b
	ld l, c
	inc hl
	ld a, $3c
	ld [hl], a
	hlcoord 3, 4
	ld de, .Modes
	call PlaceString
	ld a, [wUnlockedUnownMode]
	and a
	ret z
	hlcoord 3, 10
	ld de, .UnownMode
	jp PlaceString

.Title: ; 408b2
	db "Pokédex Options@"

.Modes: ; 408bd
	db   "Invar Regional Dex"
	next "National Pokedex"
	next "Alphabetical Order"
	db "@"

.UnownMode: ; 408e5
	db "Unown Mode@"

Pokedex_DrawSearchScreenBG: ; 408f0 (10:48f0)
	call Pokedex_FillBackgroundColor2
	hlcoord 0, 2
	lb bc, 14, 18
	call Pokedex_PlaceBorder
	hlcoord 0, 1
	ld a, $3b
	ld [hli], a
	ld de, .Title
	call PlaceString
	ld h, b
	ld l, c
	inc hl
	ld a, $3c
	ld [hl], a
	hlcoord 8, 4
	ld de, .TypeLeftRightArrows
	call Pokedex_PlaceString
	hlcoord 8, 6
	ld de, .TypeLeftRightArrows
	call Pokedex_PlaceString
	hlcoord 3, 4
	ld de, .Types
	call PlaceString
	hlcoord 3, 13
	ld de, .Menu
	jp PlaceString

.Title: ; 4092a
	db "Pokédex Search@"

.TypeLeftRightArrows: ; 40935
	db $3d, " "," "," "," "," "," "," "," ","▷", $ff

.Types: ; 40940
	db   "Type1"
	next "Type2"
	db   "@"

.Menu: ; 4094c
	db   "Begin Search!"
	next "Cancel"
	db   "@"

Pokedex_DrawSearchResultsScreenBG: ; 40962 (10:4962)
	call Pokedex_DrawBasicMainScreen
	hlcoord 9, 1
	ld de, .SearchResults
	call PlaceString
	ld de, wDexSearchResultCount
	hlcoord 9, 7
	lb bc, 1, 3
	predef PrintNum
	jp Pokedex_PlaceFrontpicTopLeftCorner


.SearchResults: ; 409ae
	db   "Search"
	next "Results"
	next ""
	next "    found!@"

Pokedex_PlaceSearchResultsTypeStrings: ; 409cf (10:49cf)
	ld a, [wDexSearchMonType1]
	hlcoord 9, 5
	dec a
	call Pokexex_PrintType
	ld a, [wDexSearchMonType1]
	ld b, a
	ld a, [wDexSearchMonType2]
	and a
	ret z
	cp b
	ret z
	hlcoord 14, 5
	dec a
	jp Pokexex_PrintType

Pokedex_DrawUnownModeBG: ; 409f1 (10:49f1)
	call Pokedex_FillBackgroundColor2
	hlcoord 2, 1
	lb bc, 11, 13
	call Pokedex_PlaceBorder
	hlcoord 2, 14
	lb bc, 1, 13
	call Pokedex_PlaceBorder
	hlcoord 2, 15
	ld [hl], $5c
	hlcoord 16, 15
	ld [hl], $3e
	hlcoord 6, 5
	call Pokedex_PlaceFrontpicAtHL
	ld de, 0
	lb bc, 0, NUM_UNOWN
.loop
	ld hl, wUnownDex
	add hl, de
	ld a, [hl]
	and a
	jr z, .done
	push af
	ld hl, UnownModeLetterAndCursorCoords
rept 4
	add hl, de
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	cp 27
	jr z, .exclamation
	cp 28
	jr z, .question
	add "A" - 1
	jr .got_letter
.exclamation
	ld a, "!"
	jr .got_letter
.question
	ld a, "?"
.got_letter
	ld [hl], a
	inc de
	inc b
	dec c
	jr nz, .loop
.done
	ld a, b
	ld [wDexUnownCount], a
	ret

UnownModeLetterAndCursorCoords: ; 40a3e
;           letter, cursor
	dwcoord   4,12,   3,12
	dwcoord   4,11,   3,11
	dwcoord   4,10,   3,10
	dwcoord   4, 9,   3, 9
	dwcoord   4, 8,   3, 8
	dwcoord   4, 7,   3, 7
	dwcoord   4, 6,   3, 6
	dwcoord   4, 5,   3, 5
	dwcoord   4, 4,   3, 4
	dwcoord   4, 3,   3, 2
	dwcoord   5, 3,   5, 2
	dwcoord   6, 3,   6, 2
	dwcoord   7, 3,   7, 2
	dwcoord   8, 3,   8, 2
	dwcoord   9, 3,   9, 2
	dwcoord  10, 3,  10, 2
	dwcoord  11, 3,  11, 2
	dwcoord  12, 3,  12, 2
	dwcoord  13, 3,  13, 2
	dwcoord  14, 3,  15, 2
	dwcoord  14, 4,  15, 4
	dwcoord  14, 5,  15, 5
	dwcoord  14, 6,  15, 6
	dwcoord  14, 7,  15, 7
	dwcoord  14, 8,  15, 8
	dwcoord  14, 9,  15, 9
	dwcoord  14,10,  15,10
	dwcoord  14,11,  15,11

Pokedex_DrawListWindow: ; 1de171 (77:6171)
	hlcoord 0, 0, wAttrMap
	ld a, 0 | BEHIND_BG
	ld bc, DEX_WINDOW_WIDTH
	call ByteFill
	hlcoord 0, DEX_WINDOW_HEIGHT+1, wAttrMap
	ld a, 0 | BEHIND_BG
	ld bc, DEX_WINDOW_WIDTH
	call ByteFill
	hlcoord PKMN_TILE_NAME_LENGTH + 1, 1, wAttrMap
	ld a, 2 | TILE_BANK
	ld c, 4
	ld b, DEX_WINDOW_HEIGHT
	call FillBoxWithByte

	ld a, $32
	hlcoord 0, DEX_WINDOW_HEIGHT +1
	ld bc, DEX_WINDOW_WIDTH -1
	call ByteFill
	hlcoord 0, 1
	lb bc, DEX_WINDOW_HEIGHT, DEX_WINDOW_WIDTH -1
	call ClearBox
	ld a, $67
	hlcoord 0, 0
	ld bc, DEX_WINDOW_WIDTH -1
	call ByteFill
	hlcoord 6, 0
	inc a ;$68
	ld [hl], a

	ld a, $39
	hlcoord 0, DEX_WINDOW_HEIGHT +1
	ld bc, DEX_WINDOW_WIDTH -1
	call ByteFill
; scroll bar
	hlcoord DEX_WINDOW_WIDTH -1, 0
	ld [hl], $5C
	ld a, $51
	hlcoord DEX_WINDOW_WIDTH -1, 1
	ld b, DEX_WINDOW_HEIGHT
	call Pokedex_FillColumn
	ld [hl], $52
	ret


Pokedex_FillBackgroundColor2: ; 40aa6
	hlcoord 0, 0
	ld a, $32
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	jp ByteFill

Pokedex_PlaceFrontpicTopLeftCorner: ; 40ab2
	hlcoord 1, 1
Pokedex_PlaceFrontpicAtHL: ; 40ab5
	xor a
	ld b, $7
.row
	ld c, $7
	push af
	push hl
.col
	ld [hli], a
	add $7
	dec c
	jr nz, .col
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	pop af
	inc a
	dec b
	jr nz, .row
	ret

Pokedex_PlaceString: ; 40acd
.loop
	ld a, [de]
	cp -1
	ret z
	inc de
	ld [hli], a
	jr .loop


Pokedex_PlaceBorder: ; 40ad5
	push hl
	ld a, $33
	ld [hli], a
	ld d, $34
	call .FillRow
	ld a, $35
	ld [hl], a
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
.loop
	push hl
	ld a, $36
	ld [hli], a
	ld d, $7f
	call .FillRow
	ld a, $37
	ld [hl], a
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .loop
	ld a, $38
	ld [hli], a
	ld d, $39
	call .FillRow
	ld a, $3a
	ld [hl], a
	ret

.FillRow: ; 40b06
	ld e, c
.row_loop
	ld a, e
	and a
	ret z
	ld a, d
	ld [hli], a
	dec e
	jr .row_loop


Pokedex_PrintListing: ; 40b0f (10:4b0f)
; Prints the list of Pokémon on the main Pokédex screen.
; Clear (2 * [wDexListingHeight]) by 17 box starting at 0,1
	ld a, $40
	ld [wCurIconTile], a

	call InitVariableWidthText
	hlcoord 0, 1
	ld a, 4
	add a
	ld b, a
	ld c, DEX_WINDOW_WIDTH -1
	ld a, " "
	call FillBoxWithByte

	hlcoord 0, 1, wAttrMap
	lb bc, 8,  9
	ld a, 0
	call FillBoxWithByte

	hlcoord 15, 1, wAttrMap
	lb bc, 8,  3
	ld a, 0
	call FillBoxWithByte

	ld a, 4
	ld d, a
	ld a, $6F
	hlcoord PKMN_TILE_NAME_LENGTH + 5, 1
.footprintloop
	call Pokedex_DrawFootprint_at_HL
	inc a
	ld bc, SCREEN_WIDTH -1
	add hl, bc
	dec d
	jp nz, .footprintloop

	;foortprint start tile
	ld bc, VTiles2 tile $6f

; Load de with wPokedexDataStart + [wDexListingScrollOffset]
	ld a, [wDexListingScrollOffset]
	ld e, a
	ld d, $0
	ld hl, wPokedexOrder
	add hl, de
	add hl, de
	add hl, de
	ld e, l
	ld d, h
	hlcoord 0, 2
	ld a, 4
.loop
	push af
	push hl
	call .getPokedexOrderByte
	ld [wPokedexCurrentMon], a
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	inc de
	call .getPokedexOrderByte
	ld [wCurGroup], a
	ld [wCurPartyGroup], a
	inc de
	call .getPokedexOrderByte
	ld [wCurForm], a
	ld [wCurPartyForm], a
	pop hl
	pop af
	push af
	farcall LoadPokedexIconPals
	push de
	push hl
	ld a, [wPokedexCurrentMon]
	call .PrintEntry
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop de
	push hl
	ld hl, tile $04
	add hl, bc
	ld b, h
	ld c, l
	pop hl

	inc de
	pop af
	dec a
	jr nz, .loop
	jp Pokedex_LoadSelectedMonTiles

.getPokedexOrderByte:
	ld h, d
	ld l, e
	ld a, BANK(wPokedexOrder)
	jp GetFarWRAMByte

.PrintEntry: ; 40b55 (10:4b55)
; Prints one entry in the list of Pokémon on the main Pokédex screen.
	and a
	ret z
	push bc
	call Pokedex_PlaceDefaultStringIfNotSeen
	pop bc
	jp c, .emptyfootprint
	push bc
	ld a, [wPokedexCurrentMon]
	call Pokedex_LoadListFootprint
	inc hl
	inc hl
	call Pokexex_PrintNumberAndTypes
	call Pokedex_PlaceCaughtSymbolIfCaught
	push hl
	ld a, [wPokedexCurrentMon]
	ld [wNamedObjectIndexBuffer], a
	ld [wCurPartyMon], a
	ld [wCurIcon], a
	farcall GetMemIconGFX

	call GetPokemonName
	pop hl
	call PlaceString
	pop bc
	ret

.emptyfootprint
	ld a, 0
	;fallthrough
Pokedex_LoadListFootprint:
	push bc
	push hl
	ld h, b
	ld l, c
	call Pokedex_LoadAnyFootprintAtTileHL
	pop hl
	pop bc
	ret

Pokexex_PrintNumberAndTypes:
	push hl
	ld de, -SCREEN_WIDTH
	add hl, de
;get base data for the current species
	ld a, [wPokedexCurrentMon]
	ld [wCurSpecies], a
	call GetBaseData ;form is known
	ld de, wNatDexNo
	lb bc, PRINTNUM_LEADINGZEROS | 2, 3
	predef PrintNum

	ld bc, PKMN_TILE_NAME_LENGTH - 5
	add hl, bc
	ld a, [wBaseType1]
	call Pokexex_PrintType
	ld a, [wBaseType1]
	ld b, a
	ld a, [wBaseType2]
	cp b
	jp z, .done
	ld bc, SCREEN_WIDTH + 1
	add hl, bc
	call Pokexex_PrintType
.done
	pop hl
	ret

Pokexex_PrintType:
	;for type in a print the type icon at hl
	push hl
	push af
	ld c, 4
	call SimpleMultiply
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	pop af
	pop hl
	push hl
;colors
	ld bc, wAttrMap - wTileMap
	add hl, bc
	ld d, 2 | TILE_BANK
	cp POISON
	jr c, .done
	ld d, 3 | TILE_BANK
	cp BUG
	jr c, .done
	ld d, 4 | TILE_BANK
	cp FIRE
	jr c, .done
	ld d, 5 | TILE_BANK
	cp ELECTRIC
	jr c, .done
	ld d, 6 | TILE_BANK
	cp DRAGON
	jr c, .done
	ld d, 7 | TILE_BANK
.done
	ld a, d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	pop hl
	ret

Pokedex_PlaceCaughtSymbolIfCaught: ; 40b82 (10:4b82)
	call Pokedex_CheckCaught
	jr nz, .place_caught_symbol
	inc hl
	ret

.place_caught_symbol
	ld a, $4f
	ld [hli], a
	ret

Pokedex_PlaceDefaultStringIfNotSeen: ; 40b8d (10:4b8d)
	call Pokedex_CheckSeen
	ret nz
	inc hl
	ld de, .NameNotSeen
	call PlaceString
	scf
	ret

.NameNotSeen: ; 40b9a
	db "-----@"

Pokedex_DrawFootprint: ; 40ba0
	hlcoord 18, 1
	ld a, $6f
Pokedex_DrawFootprint_at_HL
	;push bc ;not sure if necessary
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH-1
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	;pop bc ;not sure if necessary
	ret


Pokedex_GetSelectedMon: ; 40bb1
; Gets the species of the currently selected Pokémon. This corresponds to the
; position of the cursor in the main listing, but this function can be used
; on all Pokédex screens.
	ld a, [wDexListingCursor]
	ld hl, wDexListingScrollOffset
	add [hl]
	ld e, a
	ld d, $0
	ld hl, wPokedexOrder
	add hl, de
	add hl, de
	add hl, de
	ld a, BANK(wPokedexOrder)
	call GetFarWRAMByte
	ld [wPokedexCurrentMon], a
	ld [wCurSpecies], a
	inc hl
	ld a, BANK(wPokedexOrder)
	call GetFarWRAMByte
	;ld [wDexMonGroup], a
	ld [wCurGroup], a
	inc hl
	ld a, BANK(wPokedexOrder)
	call GetFarWRAMByte
	ld [wCurForm], a

	ld a, [wPokedexCurrentMon]
	ret


Pokedex_CheckCaught: ; 40bc4 (10:4bc4)
	push de
	push hl
	ld a, [wPokedexCurrentMon]
	dec a
	farcall CheckCaughtMon
	pop hl
	pop de
	ret


Pokedex_CheckSeen: ; 40bd0
	push de
	push hl
	ld a, [wPokedexCurrentMon]
	dec a
	farcall CheckSeenMon
	pop hl
	pop de
	ret


INCLUDE "data/pokemon/regional_dex_order_table.asm"

Pokedex_OrderMonsByMode: ; 40bdc
	ldh a, [rSVBK]
	push af
	ld a, BANK(wPokedexOrder)
	ldh [rSVBK], a
	xor a
	ld [wDexListingEnd], a
	ld hl, wPokedexOrder
	ld bc, wPokedexOrderEnd - wPokedexOrder
	call ByteFill


	ld a, [wCurrentDexMode]
	ld hl, .Jumptable
	call Pokedex_LoadPointer
	call _hl_

	pop af
	ldh [rSVBK], a
	ret

.Jumptable: ; 40bf0 (10:4bf0)
	dw .OldMode
	dw .VariantMode
	dw .Pokedex_ABCMode

.OldMode: ; 40c08 (10:4c08)
	ld hl, InvarDexOrder
	ld de, wPokedexOrder
	ld c, (InvarDexOrderEnd - InvarDexOrder) / 3
	ld b, BANK(InvarDexOrder)
	jr .loop1abc

.VariantMode: ; 40bf6 (10:4bf6)
;Get Relevant Pokedex Region Order Pointers
	ld a, [wPokedexRegion]
	ld hl, RegionDexOrderTable
	ld bc, 4
	rst AddNTimes
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld de, wPokedexOrder
	jr .loop1abc

.Pokedex_ABCMode: ; 40c30
	ld de, wPokedexOrder
	ld hl, AlphabeticalPokedexOrder
	ld c, (AlphabeticalPokedexOrderEnd - AlphabeticalPokedexOrder) / 3
	ld b, BANK(AlphabeticalPokedexOrder)
.loop1abc
	ld a, b
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	ld a, b
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	ld a, b
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	ld a, [wDexListingEnd]
	inc a
	ld [wDexListingEnd], a
	dec c
	jr nz, .loop1abc
	ret

Pokedex_DisplayModeDescription: ; 40e5b
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	ld a, [wDexArrowCursorPosIndex]
	ld hl, .Modes
	call Pokedex_LoadPointer
	ld e, l
	ld d, h
	call InitVariableWidthText
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ldh [hBGMapMode], a
	ret

.Modes: ; 40e7d
	dw .RegionalMode
	dw .VariantMode
	dw .ABCMode
	dw .UnownMode

.RegionalMode: ; 40e85
	db   "<PK><MN> native to"
	next "the Invar region.@"

.VariantMode: ; 40ea6
	db   "<PK><MN> native"
	next "to other lands.@"

.ABCMode: ; 40ec6
	db   "<PK><MN> are listed"
	next "alphabetically.@"

.UnownMode: ; 40ee4
	db   "Unown are listed"
	next "in order caught.@"

Pokedex_DisplayChangingModesMessage: ; 40f08 (10:4f08)
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	ld de, String_ChangingModesPleaseWait
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ldh [hBGMapMode], a
	ld de, SFX_CHANGE_DEX_MODE
	jp PlaySFX

String_ChangingModesPleaseWait: ; 40f32
	db   "Changing modes."
	next "Please wait.@"

Pokedex_UpdateSearchMonType: ; 40f4f (10:4f4f)
	ld a, [wDexArrowCursorPosIndex]
	cp 2
	jr nc, .no_change
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT
	jr nz, Pokedex_PrevSearchMonType
	ld a, [hl]
	and D_RIGHT
	jr nz, Pokedex_NextSearchMonType
.no_change
	and a
	ret

Pokedex_PrevSearchMonType: ; 40f65
	ld a, [wDexArrowCursorPosIndex]
	and a
	jr nz, .type2

	ld hl, wDexSearchMonType1
	ld a, [hl]
	cp $1
	jr z, .wrap_around
	dec [hl]
	jr .done

.type2
	ld hl, wDexSearchMonType2
	ld a, [hl]
	and a
	jr z, .wrap_around
	dec [hl]
	jr .done

.wrap_around
	ld [hl], UNKNOWN_T

.done
	scf
	ret

Pokedex_NextSearchMonType: ; 40f84
	ld a, [wDexArrowCursorPosIndex]
	and a
	jr nz, .type2

	ld hl, wDexSearchMonType1
	ld a, [hl]
	cp UNKNOWN_T
	jr nc, .type1_wrap_around
	inc [hl]
	jr .done
.type1_wrap_around
	ld [hl], 1
	jr .done

.type2
	ld hl, wDexSearchMonType2
	ld a, [hl]
	cp UNKNOWN_T
	jr nc, .type2_wrap_around
	inc [hl]
	jr .done
.type2_wrap_around
	ld [hl], 0

.done
	scf
	ret

Pokedex_PlaceSearchScreenTypeStrings: ; 40fa8 (10:4fa8)
	xor a
	ldh [hBGMapMode], a
	hlcoord 9, 3
	lb bc, 4, 8
	ld a, " "
	call FillBoxWithByte
	ld a, [wDexSearchMonType1]
	dec a
	hlcoord 9, 4
	call Pokexex_PrintType
	ld a, [wDexSearchMonType2]
	dec a
	hlcoord 9, 6
	jp Pokexex_PrintType

Pokedex_SearchForMons: ; 41086
	ld a, [wDexSearchMonType2]
	and a
	call nz, .Search
	ld a, [wDexSearchMonType1]
	and a
	call nz, .Search
	ret

.Search: ; 41095
	dec a
	ld [wDexConvertedMonType], a
	ld de, wPokedexOrder
	ld c, NUM_KANTO_POKEMON
	ld a, GROUP_GENERATION_ONE ; $1
	ld [wCurGroup], a
	ld [wCurSpecies], a ;the first species in each group aight
	xor a
	ld [wDexSearchResultCount], a
.loop
	push bc
	ld a, [wCurSpecies]
	ld [wPokedexCurrentMon], a
	call Pokedex_CheckCaught
	jr z, .next_mon
	push de
	call GetBaseData ;form is known
	pop de
	ld a, [wDexConvertedMonType]
	ld b, a
	ld a, [wBaseType1]
	cp b
	jr z, .match_found
	ld a, [wBaseType2]
	cp b
	jr nz, .next_mon

.match_found
	ld a, [rSVBK]
	push af
	ld a, BANK(wPokedexOrder)
	ld [rSVBK], a

	ld a, [wPokedexCurrentMon]
	ld [de], a
	inc de
	ld a, [wCurGroup]
	ld [de], a
	inc de
	ld a, [wCurForm]
	ld [de], a
	inc de
	ld a, [wDexSearchResultCount]
	inc a
	ld [wDexSearchResultCount], a

	pop af
	ld [rSVBK], a

.next_mon
	ld a, [wCurSpecies]
	inc a
	ld [wCurSpecies], a
	pop bc
	dec c
	jr nz, .loop
	ld a, [wCurGroup]
	cp GROUP_GENERATION_TWO
	ld a, 1
	ld [wCurSpecies], a
	ld a, GROUP_GENERATION_TWO
	ld [wCurGroup], a
	ld c, NUM_JOHTO_POKEMON
	jr c, .loop



	ld l, e
	ld h, d
	ld a, [wDexSearchResultCount]
	ld c, 0

.zero_remaining_mons

	cp NUM_POKEMON
	ret z
	push af
	ld a, [rSVBK]
	push af
	ld a, BANK(wPokedexOrder)
	ld [rSVBK], a

	ld [hl], c
	inc hl
	ld [hl], c
	inc hl
	pop af
	ld [rSVBK], a
	pop af

	inc a
	jr .zero_remaining_mons


Pokedex_DisplayTypeNotFoundMessage: ; 41107
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 12
	lb bc, 4, 18
	call Pokedex_PlaceBorder
	ld de, .TypeNotFound
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ldh [hBGMapMode], a
	ld c, $80
	jp DelayFrames

.TypeNotFound: ; 41126
	db   "The specified type"
	next "was not found.@"

Pokedex_UpdateCursorOAM: ; 41148 (10:5148)
	ld hl, .CursorOAM
	call Pokedex_UpdateCursor
	jp Pokedex_PutScrollbarOAM

CURSOR_Y_TOP_HALF EQU $4d
CURSOR_Y_BOTTOM_HALF EQU $65
CURSOR_X_RIGHT_HALF EQU $98
CURSOR_X_LEFT_HALF EQU $0a

.CursorOAM: ; 41230
	; y, x, tile, OAM attributes
	db CURSOR_Y_TOP_HALF, CURSOR_X_LEFT_HALF, $31, $7
	db CURSOR_Y_TOP_HALF, CURSOR_X_LEFT_HALF+(1*8), $32, $7
	db CURSOR_Y_TOP_HALF, CURSOR_X_LEFT_HALF+(2*8), $33, $7
	db CURSOR_Y_TOP_HALF, CURSOR_X_RIGHT_HALF-(2*8), $33, $7 | X_FLIP
	db CURSOR_Y_TOP_HALF, CURSOR_X_RIGHT_HALF-(1*8), $32, $7 | X_FLIP
	db CURSOR_Y_TOP_HALF, CURSOR_X_RIGHT_HALF, $31, $7 | X_FLIP
	db CURSOR_Y_TOP_HALF+(1*8), CURSOR_X_LEFT_HALF, $30, $7
	db CURSOR_Y_TOP_HALF+(1*8), CURSOR_X_RIGHT_HALF, $30, $7 | X_FLIP

	db CURSOR_Y_BOTTOM_HALF-(1*8), CURSOR_X_LEFT_HALF, $30, $7 | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF-(1*8), CURSOR_X_RIGHT_HALF, $30, $7 | X_FLIP | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF, CURSOR_X_LEFT_HALF, $31, $7 | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF, CURSOR_X_LEFT_HALF+(1*8), $32, $7 | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF, CURSOR_X_LEFT_HALF+(2*8), $33, $7 | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF, CURSOR_X_RIGHT_HALF-(2*8), $33, $7 | X_FLIP | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF, CURSOR_X_RIGHT_HALF-(1*8), $32, $7 | X_FLIP | Y_FLIP
	db CURSOR_Y_BOTTOM_HALF, CURSOR_X_RIGHT_HALF, $31, $7 | X_FLIP | Y_FLIP
	db $ff

Pokedex_UpdateCursor:
	push bc
	lb bc, 3, 0

	call Pokedex_LoadCursorOAM
	pop bc
	ret

Pokedex_LoadCursorOAM: ; 412f1 (10:52f1)
	ld de, wSprites
.loop
	bit 7, [hl]
	jr nz, .special
	ld a, [wDexListingCursor]
	and $7
	swap a
	add [hl]
	add b
	inc hl
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	jr .loop
.special
	ld a, [hli]
	cp $ff
	ret z
	ld c, 0
	jr .loop

Pokedex_PutScrollbarOAM: ; 4130e (10:530e)
; Writes the OAM data for the scrollbar in the new mode and ABC mode.
	push de
	ld a, [wDexListingEnd]
	dec a
	ld e, a
	ld a, [wDexListingCursor]
	ld hl, wDexListingScrollOffset
	add [hl]
	cp e
	jr z, .asm_4133f
	ld hl, $0
	ld bc, $79
	rst AddNTimes
	ld e, l
	ld d, h
	ld b, $0
	ld a, d
	or e
	jr z, .asm_41341
	ld a, [wDexListingEnd]
	ld c, a
.asm_41333
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc $0
	ld d, a
	jr c, .asm_41341
	inc b
	jr .asm_41333
.asm_4133f
	ld b, $79
.asm_41341
	ld a, $14
	add b
	pop hl
	ld [hli], a
	ld a, $a1
	ld [hli], a
	ld a, $f
	ld [hli], a
	ld [hl], $0
	ret

Pokedex_InitArrowCursor: ; 4134f (10:534f)
	xor a
	ld [wDexArrowCursorPosIndex], a
	ld [wDexArrowCursorDelayCounter], a
	ld [wDexArrowCursorBlinkCounter], a
	ret

Pokedex_MoveArrowCursor: ; 4135a (10:535a)
; bc = [de] - 1
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	dec a
	ld c, a
	inc de
	call Pokedex_BlinkArrowCursor

	ld hl, hJoyPressed
	ld a, [hl]
	and D_LEFT | D_UP
	and b
	jr nz, .move_left_or_up
	ld a, [hl]
	and D_RIGHT | D_DOWN
	and b
	jr nz, .move_right_or_down
	ld a, [hl]
	and SELECT
	and b
	jr nz, .select
	call Pokedex_ArrowCursorDelay
	jr c, .no_action
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT | D_UP
	and b
	jr nz, .move_left_or_up
	ld a, [hl]
	and D_RIGHT | D_DOWN
	and b
	jr nz, .move_right_or_down
	jr .no_action

.move_left_or_up
	ld a, [wDexArrowCursorPosIndex]
	and a
	jr z, .no_action
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ld hl, wDexArrowCursorPosIndex
	dec [hl]
	jr .update_cursor_pos

.move_right_or_down
	ld a, [wDexArrowCursorPosIndex]
	cp c
	jr nc, .no_action
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ld hl, wDexArrowCursorPosIndex
	inc [hl]

.update_cursor_pos
	call Pokedex_GetArrowCursorPos
	ld [hl], "▶"
	ld a, 12
	ld [wDexArrowCursorDelayCounter], a
	xor a
	ld [wDexArrowCursorBlinkCounter], a
	scf
	ret

.no_action
	and a
	ret

.select
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ld a, [wDexArrowCursorPosIndex]
	cp c
	jr c, .update
	ld a, -1
.update
	inc a
	ld [wDexArrowCursorPosIndex], a
	jr .update_cursor_pos

Pokedex_GetArrowCursorPos: ; 413d4 (10:53d4)
	ld a, [wDexArrowCursorPosIndex]
	add a
	ld l, a
	ld h, 0
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

Pokedex_BlinkArrowCursor: ; 413e0 (10:53e0)
	ld hl, wDexArrowCursorBlinkCounter
	ld a, [hl]
	inc [hl]
	and $8
	jr z, .blink_on
	call Pokedex_GetArrowCursorPos
	ld [hl], " "
	ret

.blink_on
	call Pokedex_GetArrowCursorPos
	ld [hl], "▶"
	ret

Pokedex_ArrowCursorDelay: ; 413f5 (10:53f5)
; Updates the delay counter set when moving the arrow cursor.
; Returns whether the delay is active in carry.
	ld hl, wDexArrowCursorDelayCounter
	ld a, [hl]
	and a
	ret z

	dec [hl]
	scf
	ret

Pokedex_BlackOutBG: ; 41401 (10:5401)
; Make BG palettes black so that the BG becomes all black.
	call _Pokedex_JustBlackOutBG
	jp DelayFrame

_Pokedex_JustBlackOutBG:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, wUnknBGPals
if !DEF(MONOCHROME)
	ld bc, 8 palettes
	xor a
	call ByteFill
else
	ld b, (8 palettes) / 2
.mono_loop
	ld a, PAL_MONOCHROME_BLACK % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_BLACK / $100
	ld [hli], a
	dec b
	jr nz, .mono_loop
endc
	pop af
	ldh [rSVBK], a
	ld a, $ff
	call DmgToCgbBGPals
	ld a, $ff
	jp DmgToCgbObjPal0

Pokedex_GetCGBLayout: ; 41423
	ld b, a
	call GetCGBLayout
	ld a, $e4
	call DmgToCgbBGPals
	ld a, $e0
	jp DmgToCgbObjPal0

Pokedex_LoadPointer: ; 41432
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

Pokedex_LoadSelectedMonTiles: ; 4143b
; Loads the tiles of the currently selected Pokémon.
	call Pokedex_GetSelectedMon
	call Pokedex_CheckSeen
	jr z, .QuestionMark
	call Pokedex_GetSelectedMon
	;cp UNOWN
	;jr z, .use_first_unown
	;cp MAGIKARP
	;jr z, .use_first_magikarp
	;ld a, [wCurrentDexMode]
	;cp DEXMODE_VARIANT
	;ld a, 1
	;jr nz, .continue
	;ld a, 2
	;jr .continue
;.use_first_unown
	;ld a, [wFirstUnownSeen]
	;jr .continue
;.use_first_magikarp
	;ld a, [wFirstMagikarpSeen]
.continue
	ld a, [wPokedexCurrentMon]
	ld [wCurPartySpecies], a
	call GetBaseData ;form is known
	ld de, VTiles2
	predef GetFrontpic
	ret

.QuestionMark:
	ld a, BANK(sScratch)
	call GetSRAMBank
	ld hl, QuestionMarkLZ
	ld de, sScratch
	call Decompress
	ld hl, VTiles2
	ld de, sScratch
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	call CloseSRAM
	ret

Pokedex_LoadCurrentFootprint: ; 41478 (10:5478)
	call Pokedex_GetSelectedMon

Pokedex_LoadAnyFootprint: ; 4147b
	ld hl, VTiles2 tile $6F
	ld a, [wPokedexCurrentMon]
Pokedex_LoadAnyFootprintAtTileHL:
	push hl
	push af
	ld a, [wCurGroup]
	ld hl, RegionalFootprintTable
		ld de, 3
	call IsInArray
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a

	pop af
	push af
	ld de, 4
	call IsInArray
	inc hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr c, .variant
	pop af
	dec a
	jr .notvariant
.variant
	pop af
	ld a, [wCurForm]
.notvariant
	ld bc, LEN_1BPP_TILE * 4
	rst AddNTimes
	ld b, d
	ld e, l
	ld d, h
	pop hl
	ld c, 4
	jp Request1bpp

INCLUDE "gfx/variant_footprint_table.asm"

Pokedex_LoadGFX:
	call DisableLCD
Pokedex_LoadGFX2:
	ld hl, VTiles2
	ld bc, $31 tiles
	xor a
	call ByteFill
	call LoadStandardFont
	call LoadFontsExtra
	ld hl, PokedexLZ
	ld de, VTiles2 tile $31
	call Decompress
	ld hl, PokedexSlowpokeLZ
	ld de, VTiles0
	call Decompress
	ld a, 6
	call SkipMusic

	jp EnableLCD

Pokedex_LoadUnownFont: ; 41a2c
	ld a, [wOptions2]
	ld [wOptionsBuffer], a
	and $ff - FONT_MASK
	or UNOWN_FONT
	ld [wOptions2], a
	jp LoadStandardFont

Pokedex_LoadUnownFrontpicTiles: ; 41a58 (10:5a58)
	ld a, [wCurForm]
	push af
	ld a, [wDexCurrentUnownIndex]
	ld [wCurForm], a
	ld a, UNOWN
	ld [wCurPartySpecies], a
	call GetBaseData ;form is known
	ld de, VTiles2 tile $00
	predef GetFrontpic
	pop af
	ld [wCurForm], a
	ret

NewPokedexEntry: ; fb877
	ldh a, [hMapAnims]
	push af
	ld a, [wEnemyBackupShiny]
	ld [wDexMonShiny], a
	xor a
	ldh [hMapAnims], a
	call LowVolume
	call ClearBGPalettes
	call ClearTileMap
	call UpdateSprites
	call ClearSprites
	ld a, [wPokedexStatus]
	push af
	ldh a, [hSCX]
	add 5
	ldh [hSCX], a
	xor a
	ld [wPokedexStatus], a
	ld [wDexSearchSlowpokeFrame], a
	call .NewPokedexEntry
.loop
	call WaitPressAorB_BlinkCursor
	call Pokedex_Page
	ld a, [wPokedexStatus]
	cp $ff
	jr .loop
	call WaitPressAorB_BlinkCursor
	pop af
	ld [wPokedexStatus], a
	call MaxVolume
	call ClearBGPalettes
	ldh a, [hSCX]
	add -5
	ldh [hSCX], a
	call .ReturnFromDexRegistration
	pop af
	ldh [hMapAnims], a
	ret

.NewPokedexEntry:
	xor a
	ldh [hBGMapMode], a
	farcall Pokedex_DrawDexEntryScreenRightEdge
	call Pokedex_ResetBGMapMode
	call DisableLCD
	call LoadStandardFont
	call LoadFontsExtra
	call Pokedex_LoadGFX2
	call Pokedex_LoadAnyFootprint
	ld a, [wPokedexCurrentMon]
	ld [wCurPartySpecies], a
	call Pokedex_DrawDexEntryScreenBG
	call Pokedex_DrawFootprint
	hlcoord 0, 17
	ld [hl], $3b
	inc hl
	ld bc, 19
	ld a, " "
	call ByteFill
	farcall DisplayDexEntry
	call EnableLCD
	call ApplyTilemapInVBlank
	call GetBaseData ;form is known
	ld de, VTiles2
	predef GetFrontpic
	ld a, CGB_POKEDEX
	call Pokedex_GetCGBLayout
	call DelayFrame
	ld a, [wCurPartySpecies]
	jp PlayCry

.ReturnFromDexRegistration:
	call ClearTileMap
	call LoadFontsExtra
	call LoadStandardFont
	call Pokedex_PlaceFrontpicTopLeftCorner
	call ApplyAttrAndTilemapInVBlank
	farcall GetEnemyMonPersonality
	ld a, [hli]
	ld [wTempMonPersonality], a
	ld a, [hl]
	ld [wTempMonPersonality + 1], a
	ld a, 1
	ld [wTempMonGroup], a
	ld b, CGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetCGBLayout
	jp SetPalettes
; fb8f1
Pokedex_SetBGMapMode1:
	ld a, $1
	jr Pokedex_SetBGMapMode

Pokedex_SetBGMapMode2:
	ld a, $2
	jr Pokedex_SetBGMapMode

Pokedex_SetBGMapMode3: ; 41ad7 (10:5ad7)
	ld a, $3
	jr Pokedex_SetBGMapMode

Pokedex_SetBGMapMode4: ; 41ae1 (10:5ae1)
	ld a, $4
Pokedex_SetBGMapMode:
	ldh [hBGMapMode], a
	jp Delay2

Pokedex_ResetBGMapMode: ; 41af7
	xor a
	ldh [hBGMapMode], a
	ret

PokedexLZ: ; 4150e
INCBIN "gfx/pokedex/pokedex.2bpp.lz"

PokedexSlowpokeLZ: ; 416b0
INCBIN "gfx/pokedex/slowpoke.2bpp.lz"

QuestionMarkLZ: ; 1de0e1
INCBIN "gfx/pokedex/question_mark.2bpp.lz"

PokedexTypes:
INCBIN "gfx/pokedex/types.2bpp"