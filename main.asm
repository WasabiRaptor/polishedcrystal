INCLUDE "constants.asm"


SECTION "Code 1", ROMX

LoadPushOAM:: ; 4031
	lb bc, (PushOAMCodeEnd - PushOAMCode), hPushOAM & $ff
	ld hl, PushOAMCode
.loop
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .loop
	ret

PushOAMCode: ; 403f
	ld a, wSprites / $100
	ldh [rDMA], a
	ld a, 40
.loop
	dec a
	jr nz, .loop
	ret
PushOAMCodeEnd

ReanchorBGMap_NoOAMUpdate:: ; 6454
	ldh a, [hOAMUpdate]
	push af

	ld a, $1
	ldh [hOAMUpdate], a
	ldh a, [hBGMapMode]
	push af

	xor a
	ldh [hBGMapMode], a
	ldh [hLCDCPointer], a
	ld a, $90
	ldh [hWY], a
	call LoadMapPart

	ld a, VBGMap1 / $100
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	call BGMapAnchorTopLeft
	farcall LoadBlindingFlashPalette
	farcall ApplyPals
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	ldh [hBGMapAddress], a
	ld [wBGMapAnchor], a
	ldh [hSCX], a
	ldh [hSCY], a
	inc a
	ldh [hCGBPalUpdate], a
	ld a, VBGMap0 / $100 ; overworld
	ldh [hBGMapAddress + 1], a
	ld [wBGMapAnchor + 1], a
	call ApplyBGMapAnchorToObjects
	farcall SetTallGrassAttributes
	pop af
	ldh [hBGMapMode], a
	pop af
	ldh [hOAMUpdate], a
	ld hl, wVramState
	set 6, [hl]
	ret

LoadFonts_NoOAMUpdate:: ; 64bf
	ldh a, [hOAMUpdate]
	push af
	ld a, $1
	ldh [hOAMUpdate], a

	call LoadFontsExtra
	ld a, $90
	ldh [hWY], a
	call SafeUpdateSprites
	call LoadStandardOpaqueFont

	pop af
	ldh [hOAMUpdate], a
	ret

ReanchorBGMap_NoOAMUpdate_NoDelay::
	ldh a, [hOAMUpdate]
	push af

	ld a, $1
	ldh [hOAMUpdate], a
	ldh a, [hBGMapMode]
	push af

	xor a
	ldh [hBGMapMode], a
	ldh [hLCDCPointer], a
	ld a, $90
	ldh [hWY], a
	call LoadMapPart

	ld a, VBGMap1 / $100
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	call CopyTilemapAtOnce
	xor a
	ldh [hWY], a
	ldh [hBGMapAddress], a
	ld [wBGMapAnchor], a
	ldh [hSCX], a
	ldh [hSCY], a
	inc a
	ldh [hCGBPalUpdate], a
	ld a, VBGMap0 / $100 ; overworld
	ldh [hBGMapAddress + 1], a
	ld [wBGMapAnchor + 1], a
	pop af
	ldh [hBGMapMode], a
	pop af
	ldh [hOAMUpdate], a
	ld hl, wVramState
	set 6, [hl]
	ld b, 0
	jp SafeCopyTilemapAtOnce

INCLUDE "engine/map_objects.asm"
INCLUDE "engine/intro_menu.asm"
INCLUDE "engine/init_options.asm"
INCLUDE "engine/learn.asm"
INCLUDE "engine/math.asm"
INCLUDE "engine/npc_movement.asm"
INCLUDE "engine/events/happiness_egg.asm"
INCLUDE "engine/events/specials_2.asm"
INCLUDE "data/items/attributes.asm"


SECTION "Effect Command Pointers", ROMX

INCLUDE "data/battle/effect_command_pointers.asm"


SECTION "Code 2", ROMX

INCLUDE "engine/player_object.asm"
INCLUDE "engine/sine.asm"
INCLUDE "data/predef_pointers.asm"
INCLUDE "engine/trainer_scripts.asm"
;INCLUDE "engine/imported_sounds_pcm.asm"


SECTION "Code 3", ROMX

INCLUDE "engine/events/specials.asm"
INCLUDE "engine/printnum.asm"
INCLUDE "engine/health.asm"
INCLUDE "engine/events/overworld.asm"
INCLUDE "engine/items.asm"
INCLUDE "engine/anim_hp_bar.asm"
INCLUDE "engine/move_mon.asm"
INCLUDE "engine/billspctop.asm"
INCLUDE "engine/item_effects.asm"

CheckTime:: ; c000
	ld a, [wTimeOfDay]
	ld hl, TimeOfDayTable
	ld de, 2
	call IsInArray
	inc hl
	ld c, [hl]
	ret c

	xor a
	ld c, a
	ret

TimeOfDayTable: ; c012
	db DAWN, 1 << DAWN
	db MIDDAY,  1 << MIDDAY
	db MIDNIGHT, 1 << MIDNIGHT
	db MIDNIGHT, 1 << MIDNIGHT
	db -1

GetBreedMon1LevelGrowth: ; e698
	ld hl, wBreedMon1Stats
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	farcall CalcLevel
	ld a, [wBreedMon1Level]
	ld b, a
	ld a, d
	ld e, a
	sub b
	ld d, a
	ret

GetBreedMon2LevelGrowth: ; e6b3
	ld hl, wBreedMon2Stats
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	farcall CalcLevel
	ld a, [wBreedMon2Level]
	ld b, a
	ld a, d
	ld e, a
	sub b
	ld d, a
	ret


SECTION "Code 4", ROMX

INCLUDE "engine/pack.asm"
INCLUDE "engine/time.asm"
INCLUDE "engine/tmhm.asm"
INCLUDE "engine/naming_screen.asm"
INCLUDE "engine/events/itemball.asm"
INCLUDE "engine/events/heal_machine_anim.asm"
INCLUDE "engine/events/whiteout.asm"
INCLUDE "engine/events/forced_movement.asm"
INCLUDE "engine/events/itemfinder.asm"
INCLUDE "engine/startmenu.asm"
INCLUDE "engine/selectmenu.asm"
INCLUDE "engine/events/elevator.asm"
INCLUDE "engine/events/safari_game.asm"
INCLUDE "engine/events/std_tiles.asm"

INCLUDE "engine/events/endofcycle.asm"

SECTION "Roofs", ROMX

INCLUDE "engine/mapgroup_roofs.asm"


SECTION "Code 5", ROMX

INCLUDE "engine/overworld.asm"
INCLUDE "engine/tile_events.asm"
INCLUDE "engine/save.asm"
INCLUDE "engine/spawn_points.asm"
INCLUDE "engine/map_setup.asm"
INCLUDE "engine/pokecenter_pc.asm"
INCLUDE "engine/mart.asm"
INCLUDE "engine/money.asm"
INCLUDE "data/items/marts.asm"
INCLUDE "engine/events/mom.asm"
INCLUDE "engine/events/daycare.asm"
INCLUDE "engine/breeding.asm"


SECTION "Code 7", ROMX

INCLUDE "engine/events/pokepic.asm"
INCLUDE "engine/scrolling_menu.asm"
INCLUDE "engine/switch_items.asm"
INCLUDE "engine/menu.asm"
INCLUDE "engine/mon_menu.asm"
INCLUDE "engine/battle/menu.asm"
INCLUDE "engine/buy_sell_toss.asm"
INCLUDE "engine/trainer_card.asm"
INCLUDE "engine/events/prof_oaks_pc.asm"
INCLUDE "engine/decorations.asm"
INCLUDE "data/trainers/dvs.asm"

UpdateItemDescriptionAndBagQuantity:
	hlcoord 1, 1
	lb bc, 1, 8
	call ClearBox
	ld a, [wMenuSelection]
	cp -1
	jr z, UpdateItemDescription
	hlcoord 1, 1
	ld de, BagXString
	call PlaceString
	ld a, [wMenuSelection]
	call GetQuantityInBag
	hlcoord 6, 1
	ld de, wBuffer1
	lb bc, 2, 3
	predef PrintNum
UpdateItemDescription: ; 0x244c3
	ld a, [wMenuSelection]
	ld [wCurSpecies], a
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call TextBox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farjp PrintItemDescription

BagXString:
	db "Bag ×@"

UpdateTMHMDescriptionAndOwnership:
	hlcoord 1, 1
	lb bc, 1, 8
	call ClearBox
	ld a, [wMenuSelection]
	cp -1
	jr z, UpdateTMHMDescription
	ld a, [wCurTMHM]
	farcall CheckTMHM
	ld de, OwnedTMString
	jr c, .GotString
	ld de, UnownedTMString
.GotString
	hlcoord 1, 1
	call PlaceString
UpdateTMHMDescription:
	ld a, [wMenuSelection]
	ld [wCurSpecies], a
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call TextBox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farjp PrintTMHMDescription

OwnedTMString:
	db "Owned@"
UnownedTMString:
	db "Unowned@"

UpdateKeyItemDescription:
	;ld a, [wMenuSelection]
	;ld [wCurKeyItem], a
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call TextBox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farjp PrintKeyItemDescription

GetQuantityInBag:
	ld a, [wCurItem]
	push af
	ld a, [wMenuSelection]
	ld [wCurItem], a
	call CountItem
	pop af
	ret

;stuff for registered items I might need later

PlaceMenuItemName:
; places a star near the name if registered
	push hl
	push de
	dec de
	dec de
	ld a, " "
	ld [de], a
	ld a, [wMenuSelection]
	pop de
	pop hl
PlaceMartItemName:
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	pop hl
	jp PlaceString

PlaceMenuTMHMName:
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndexBuffer], a
	farcall GetTMHMName
	pop hl
	jp PlaceString

PlaceMenuApricornQuantity:
	ld a, [wMenuSelection]
	ld [wCurItem], a
	and a
	ret nz
	ld l, e
	ld h, d
	jr _PlaceMenuQuantity

PlaceMenuItemQuantity: ; 0x24ac3
	push de
	ld a, [wMenuSelection]
	ld [wCurItem], a
	farcall CheckTossableItem
	ld a, [wItemAttributeParamBuffer]
	pop hl
	and a
	ret nz
_PlaceMenuQuantity:
	ld de, $15
	add hl, de
	ld [hl], "×"
	inc hl
	ld de, wMenuSelectionQuantity
	lb bc, 1, 2
	predef_jump PrintNum

PlaceMoneyTopRight: ; 24ae8
	ld hl, MenuDataHeader_0x24b15
	call CopyMenuDataHeader
	jr PlaceMoneyDataHeader

PlaceMoneyBottomLeft: ; 24af0
	ld hl, MenuDataHeader_0x24b1d
	call CopyMenuDataHeader
	jr PlaceMoneyDataHeader

PlaceMoneyAtTopLeftOfTextbox: ; 24af8
	ld hl, MenuDataHeader_0x24b15
	lb de, 0, 11
	call OffsetMenuDataHeader

PlaceMoneyDataHeader: ; 24b01
	call MenuBox
	call MenuBoxCoord2Tile
	ld de, SCREEN_WIDTH + 1
	add hl, de
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 7
	predef_jump PrintNum

MenuDataHeader_0x24b15: ; 0x24b15
	db $40 ; flags
	db 00, 10 ; start coords
	db 02, 19 ; end coords
	dw NULL
	db 1 ; default option

MenuDataHeader_0x24b1d: ; 0x24b1d
	db $40 ; flags
	db 11, 00 ; start coords
	db 13, 09 ; end coords
	dw NULL
	db 1 ; default option

PlaceBlueCardPointsTopRight:
	hlcoord 11, 0
	lb bc, 1, 7
	call TextBox
	hlcoord 12, 1
	ld de, wBlueCardBalance
	lb bc, 1, 3
	predef PrintNum
	ld de, .PointsString
	jp PlaceString

.PointsString:
	db " Pts@"

PlaceBattlePointsTopRight:
	hlcoord 12, 0
	lb bc, 1, 6
	call TextBox
	hlcoord 13, 1
	ld de, wBattlePoints
	lb bc, 1, 3
	predef PrintNum
	ld de, .BPString
	jp PlaceString

.BPString:
	db " BP@"

Special_DisplayCoinCaseBalance: ; 24b25
	; Place a text box of size 1x7 at 11, 0.
	hlcoord 11, 0
	lb bc, 1, 7
	call TextBox
	hlcoord 12, 0
	ld de, CoinString
	call PlaceString
	ld de, wCoins
	lb bc, 2, 5
	hlcoord 13, 1
	predef_jump PrintNum

Special_DisplayMoneyAndCoinBalance: ; 24b4e
	hlcoord 5, 0
	lb bc, 3, 13
	call TextBox
	hlcoord 6, 1
	ld de, MoneyString
	call PlaceString
	hlcoord 11, 1
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 7
	predef PrintNum
	hlcoord 6, 3
	ld de, CoinString
	call PlaceString
	hlcoord 14, 3
	ld de, wCoins
	lb bc, 2, 5
	predef_jump PrintNum

MoneyString: ; 24b83
	db "Money@"
CoinString: ; 24b89
	db "Coin@"

PadCoords_de: ; 27092
	ld a, d
	add 4
	ld d, a
	ld a, e
	add 4
	ld e, a
	jp GetBlockLocation

LevelUpHappinessMod: ; 2709e
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1CaughtLocation
	predef GetPartyLocation
	ld a, [hl]
	and $7f
	ld d, a
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	cp d
	ld c, HAPPINESS_GAINLEVEL
	jr nz, .ok
	ld c, HAPPINESS_GAINLEVELATHOME

.ok
	farjp ChangeHappiness

_ReturnToBattle_UseBall: ; 2715c
	call ClearBGPalettes
	call ClearTileMap
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .gettutorialbackpic
	farcall GetMonBackpic
	jr .continue

.gettutorialbackpic
	farcall GetTrainerBackpic
.continue
	farcall GetMonFrontpic
	farcall _LoadBattleFontsHPBar
	call GetMemCGBLayout
	call CloseWindow
	call LoadStandardMenuDataHeader
	call ApplyTilemapInVBlank
	call SetPalettes
	farcall LoadPlayerStatusIcon
	farcall LoadEnemyStatusIcon
	farjp FinishBattleAnim

INCLUDE "data/moves/effects_pointers.asm"

INCLUDE "data/moves/effects.asm"


SECTION "Code 8", ROMX

INCLUDE "engine/link.asm"


SECTION "Code 9", ROMX

INCLUDE "data/battle/music.asm"
INCLUDE "engine/battle/trainer_huds.asm"
INCLUDE "engine/battle/ai/redundant.asm"
INCLUDE "engine/events/move_deleter.asm"
INCLUDE "engine/tmhm2.asm"
INCLUDE "engine/key_items.asm"
INCLUDE "engine/events/pokerus.asm"
INCLUDE "data/trainers/class_names.asm"
INCLUDE "data/moves/descriptions.asm"

ShowLinkBattleParticipants: ; 2ee18
; If we're not in a communications room,
; we don't need to be here.
	ld a, [wLinkMode]
	and a
	ret z

	farcall _ShowLinkBattleParticipants
	ld c, 150
	call DelayFrames
	call ClearTileMap
	jp ClearSprites

FindFirstAliveMonAndStartBattle: ; 2ee2f
	xor a
	ldh [hMapAnims], a
	call DelayFrame
	ld b, 6
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH - 1

.loop
	ld a, [hli]
	or [hl]
	jr nz, .okay
	add hl, de
	dec b
	jr nz, .loop

.okay
	ld de, MON_LEVEL - MON_HP
	add hl, de
	ld a, [hl]
	ld [wBattleMonLevel], a
	predef Predef_StartBattle
	farcall _LoadBattleFontsHPBar
	ld a, 1
	ldh [hBGMapMode], a
	call ClearSprites
	call ClearTileMap
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	ldh [rWY], a
	ldh [hMapAnims], a
	ret

ClearBattleRAM: ; 2ef18
	xor a
	ld [wBattlePlayerAction], a
	ld [wBattleResult], a

	ld hl, wPartyMenuCursor
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld [wMenuScrollPosition], a
	ld [wCriticalHit], a
	ld [wBattleMonSpecies], a
	ld [wBattleParticipantsNotFainted], a
	ld [wCurBattleMon], a
	ld [wTimeOfDayPal], a
	ld [wPlayerTurnsTaken], a
	ld [wEnemyTurnsTaken], a
	ld [wEvolvableFlags], a

	ld hl, wPlayerHPPal
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonDVs
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonPersonality
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonDVs
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonPersonality
	ld [hli], a
	ld [hl], a

	; Clear the entire BattleMons area
	ld hl, wBattle
	ld bc, wBattleEnd - wBattle
	xor a
	call ByteFill

	; Clear UsedItems
	ld hl, wPartyUsedItems
	ld bc, 6
	xor a
	call ByteFill
	ld hl, wOTPartyUsedItems
	ld bc, 6
	xor a
	call ByteFill

	farcall ResetEnemyStatLevels

	call ClearWindowData

	ld hl, hBGMapAddress
	xor a
	ld [hli], a
	ld [hl], VBGMap0 / $100
	ret

PlaceGraphic: ; 2ef6e
; Fill wBoxAlignment-aligned box width b height c
; with iterating tile starting from hGraphicStartTile at hl.
; Predef $13

	ld de, SCREEN_WIDTH

	ld a, [wBoxAlignment]
	and a
	jr nz, .right

	ldh a, [hGraphicStartTile]
.x1
	push bc
	push hl

.y1
	ld [hl], a
	add hl, de
	inc a
	dec c
	jr nz, .y1

	pop hl
	inc hl
	pop bc
	dec b
	jr nz, .x1
	ret

.right
; Right-aligned.
	push bc
	ld b, 0
	dec c
	add hl, bc
	pop bc

	ldh a, [hGraphicStartTile]
.x2
	push bc
	push hl

.y2
	ld [hl], a
	add hl, de
	inc a
	dec c
	jr nz, .y2

	pop hl
	dec hl
	pop bc
	dec b
	jr nz, .x2
	ret


SECTION "Code 10", ROMX

INCLUDE "engine/events/fruit_trees.asm"
INCLUDE "engine/events/hidden_grottoes.asm"
INCLUDE "engine/battle/ai/move.asm"

AnimateDexSearchSlowpoke: ; 441cf
	ld hl, .FrameIDs
	ld b, 25
.loop
	ld a, [hli]

	; Wrap around
	cp $fe
	jr nz, .ok
	ld hl, .FrameIDs
	ld a, [hli]
.ok

	ld [wDexSearchSlowpokeFrame], a
	ld a, [hli]
	ld c, a
	push bc
	push hl
	call DoDexSearchSlowpokeFrame
	pop hl
	pop bc
	call DelayFrames
	dec b
	jr nz, .loop
	xor a
	ld [wDexSearchSlowpokeFrame], a
	call DoDexSearchSlowpokeFrame
	ld c, 32
	jp DelayFrames

.FrameIDs: ; 441fc
	; frame ID, duration
	db 0, 7
	db 1, 7
	db 2, 7
	db 3, 7
	db 4, 7
	db -2

DoDexSearchSlowpokeFrame: ; 44207
	ld a, [wDexSearchSlowpokeFrame]
	ld hl, .SpriteData
	ld de, wSprites
.loop
	ld a, [hli]
	cp -1
	ret z
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [wDexSearchSlowpokeFrame]
	ld b, a
	add a
	add b
	add [hl]
	inc hl
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	jr .loop

.SpriteData: ; 44228
	dsprite 11, 0,  9, 0, $00, $0
	dsprite 11, 0, 10, 0, $01, $0
	dsprite 11, 0, 11, 0, $02, $0
	dsprite 12, 0,  9, 0, $10, $0
	dsprite 12, 0, 10, 0, $11, $0
	dsprite 12, 0, 11, 0, $12, $0
	dsprite 13, 0,  9, 0, $20, $0
	dsprite 13, 0, 10, 0, $21, $0
	dsprite 13, 0, 11, 0, $22, $0
	db -1

DisplayDexEntry: ; 4424d
	VWTextStart $b6
	lb bc, 9, 12
	hlcoord 8, 1
	call ClearBox
	ld a, [wPokedexCurrentMon]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	hlcoord 9, 3
	call PlaceString ; mon species
	ld a, [wPokedexCurrentMon]
	call GetDexEntryPointer
	ld a, b
	push af
	hlcoord 9, 5
	call FarString ; dex species
	dec de
	ld h, b
	ld l, c
	push de
; Print dex number
	hlcoord 9, 1
	ld de, .No
	call PlaceString
	hlcoord 11, 1
	ld a, [wPokedexCurrentMon]
	ld [wCurSpecies], a
	call GetBaseData
	ld de, wNatDexNo
	lb bc, PRINTNUM_LEADINGZEROS | 2, 3
	predef PrintNum
	farcall Pokedex_DrawFootprint
; Check to see if we caught it.  Get out of here if we haven't.
	ld a, [wPokedexCurrentMon]
	dec a
	farcall CheckCaughtMon
	pop hl
	pop bc
	ret z
; Get the height of the Pokemon.
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	inc hl
	ld a, b
	push af
	push hl
	call GetFarHalfword
	ld d, l
	ld e, h
	pop hl
	inc hl
	inc hl
	ld a, d
	or e
	jr z, .skip_height
	push hl
	push de
	ld de, .Height
	call .MakeHeightWeight
	pop de
	call .MakeNumDecimal
	hlcoord 9, 7
	ld de, wStringBuffer1
	VWTextStart $c4
	call PlaceString
	pop hl
.skip_height
	pop af
	push af
	inc hl
	push hl
	dec hl
	call GetFarHalfword
	ld d, l
	ld e, h
	ld a, e
	or d
	jr z, .skip_weight
	push de
	ld de, .Weight
	call .MakeHeightWeight
	pop de
	call .MakeNumDecimal
	hlcoord 9, 9
	ld de, wStringBuffer1
	VWTextStart $ca
	call PlaceString
.skip_weight
; Page
	lb bc, 5, SCREEN_WIDTH - 2
	hlcoord 2, 11
	call ClearBox
	hlcoord 1, 10
	ld bc, SCREEN_WIDTH - 1
	ld a, $6a ; horizontal divider
	call ByteFill
	call .DexPageNo
	call InitVariableWidthText
.string_loop
	pop de
	inc de
	pop af
	push af
	push de
	call FarReadString
	pop de
	ld a,[wPokedexEntryBufferValue]
	ld b, a
	ld a, [wPokedexStatus]
	cp b
	pop bc
	jr z, .printentry
	ld a, b
	call FarReadString
	ld a, c
	cp $7f
	jr nz, .statpage
	ld a,[wPokedexEntryBufferValue]
	inc a
	ld [wPokedexEntryBufferValue], a
	push bc
	push de
	jr .string_loop

.printentry
	ld a, b
	hlcoord 2, 11
	jp FarString

.statpage
	push bc
	VWTextStart $b6

	lb bc, 9, 12
	hlcoord 8, 1
	call ClearBox
	lb bc, 5, SCREEN_WIDTH - 2
	hlcoord 2, 11
	call ClearBox
	hlcoord 1, 10
	ld bc, SCREEN_WIDTH - 1
	ld a, $6a ; horizontal divider
	call ByteFill
	call .DexPageNo
	hlcoord 9, 2
	ld de, .Hp
	call PlaceString
	hlcoord 13, 2
	ld de, .Atk
	call PlaceString
	hlcoord 17, 2
	ld de, .Def
	call PlaceString
	hlcoord 9, 5
	ld de, .Spd
	call PlaceString
	hlcoord 13, 5
	ld de, .SAt
	call PlaceString
	hlcoord 17, 5
	ld de, .SDf
	call PlaceString

	lb bc, 1, 3
	hlcoord 9, 3
	ld de, wBaseHP
	predef PrintNum
	hlcoord 13, 3
	inc de ;wBaseAttack
	predef PrintNum
	hlcoord 17, 3
	inc de ;wBaseDefense
	predef PrintNum
	hlcoord 9, 6
	inc de ;wBaseSpeed
	predef PrintNum
	hlcoord 13, 6
	inc de ;wBaseSpecialAttack
	predef PrintNum
	hlcoord 17, 6
	inc de ;wBaseSpecialDefense
	predef PrintNum

	hlcoord 9, 8
	ld de, .EvYield
	call PlaceString
	hlcoord 9, 9
	call .EvYieldCheck
	hlcoord 15, 9
	call .EvYieldCheck
	xor a
	push af
.abilityloop:
	call InitVariableWidthText
	lb bc, 5, SCREEN_WIDTH - 2
	hlcoord 2, 11
	call ClearBox
	call .DexPageNo
	ld hl, wBaseAbility1
	ld b, 0
	pop af
	ld c, a
	push af
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .hasAbility
	pop af
	inc a
	push af
	inc hl
	ld a, [hl]
	and a
	jr z, .lastpage
.hasAbility
	ld b, a
	push bc
	hlcoord 2, 12
	predef PrintAbility
	pop bc
	hlcoord 2, 14
	predef PrintAbilityDescription

	pop af
	push af
	cp 2
	hlcoord 2, 11
	jr z, .hiddenability
	ld de, .Ability
	call PlaceString
	hlcoord 10, 11
	pop af
	push af
	add "1"
	ld [hl], a
.printdexability
	pop af
	ld e, a
	ld a,[wPokedexEntryBufferValue]
	inc a
	ld [wPokedexEntryBufferValue], a

	ld a, [wPokedexStatus]
	ld b, a
	ld a,[wPokedexEntryBufferValue]
	cp b
	pop bc
	ret z
	push bc
	ld a, e
	inc a
	push af
	cp 3
	jr c, .abilityloop
.lastpage

	lb bc, 5, SCREEN_WIDTH - 2
	hlcoord 2, 11
	call ClearBox
	call .DexPageNo
	ld de, .EggGroups
	hlcoord 2, 11
	call PlaceString
	ld a, [wBaseEggGroups]
	and EGG_GROUP_1_MASK
	swap a
	ld b, a
	call GetEggGroupString
	hlcoord 3, 13
	push bc
	call PlaceString
	pop bc

	ld a, [wBaseEggGroups]
	and EGG_GROUP_2_MASK
	cp b
	jr z, .sameegggroup
	call GetEggGroupString
	hlcoord 3, 15
	call PlaceString

.sameegggroup
	pop af
	pop bc
	ld a, $ff
	ld [wPokedexStatus], a
	ret

.hiddenability
	pop af
	push af
	ld de, .Hidden
	call PlaceString
	jr .printdexability

.DexPageNo:
	hlcoord 2, 9
	ld a, $d0
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	hlcoord 5, 9
	;page number
	ld a, [wPokedexStatus]
	add "1"
	ld [hl], a
	ret

.MakeHeightWeight:
	ld a, $ff
	ld [wVariableWidthTextTile], a
	ld hl, wStringBuffer1
	call PlaceString
	ld h, b
	ld l, c
	ld [hl], "@"
	ret

.MakeNumDecimal:
	ld a, e
	ld [wStringBuffer2], a
	ld a, d
	ld [wStringBuffer2+1], a
	ld hl, wStringBuffer1 + 3
	ld de, wStringBuffer2
	lb bc, PRINTNUM_LEADINGZEROS | 2, 3
	predef PrintNum
	dec hl
	ld a, [hl]
	ld [hl], "."
	inc hl
	ld [hl], a
	ret
.No
	db"No.@"
.Height:
	db "Ht ??.?m@"
.Weight:
	db "Wt ??.?kg@"
.meters:
	db "m@" ; HT   ???m"
.kilograms:
	db "kg@"; WT   ???kg
.Hp
	db "HP@"
.Atk
	db "Atk@"
.Def
	db "Def@"
.SAt
	db "SAt@"
.SDf
	db "SDf@"
.Spd
	db "Spd@"
.EvYield
	db "EV Yield@"
.Hidden
	db "Hidden "
.Ability
	db "Ability@"
.EggGroups
	db "Egg Groups@"


.EvYieldCheck:
	ld a, [wBaseEVYield1]
	ld b, a
	and HP_EV_YIELD_MASK
	jr nz, .Hpev
	ld a, b
	and ATK_EV_YIELD_MASK
	jr nz, .Atkev
	ld a, b
	and DEF_EV_YIELD_MASK
	jr nz, .Defev
	ld a, b
	and SPD_EV_YIELD_MASK
	jr nz, .Spdev
	ld a, [wBaseEVYield2]
	ld b, a
	and SAT_EV_YIELD_MASK
	jr nz, .Satev
	ld a, b
	and SDF_EV_YIELD_MASK
	jr nz, .Sdfev
	ret

.Hpev
	ld b, a
	rla
	rla
	add "0"
	ld [hli], a
	inc hl

	ld de, .Hp
	jr .evdone1

.Atkev
	ld b, a
	swap a

	add "0"
	ld [hli], a
	inc hl

	ld de, .Atk
	jr .evdone1

.Defev
	ld b, a
	rrca
	rrca
	add "0"
	ld [hli], a
	inc hl

	ld de, .Def
	jr .evdone1

.Spdev
	ld b, a
	add "0"
	ld [hli], a
	inc hl

	ld de, .Spd
	jr .evdone1

.Satev
	ld b, a
	rla
	rla
	add "0"
	ld [hli], a
	inc hl

	ld de, .SAt
	jr .evdone2

.Sdfev
	ld b, a
	swap a
	add "0"
	ld [hli], a
	inc hl

	ld de, .SDf

.evdone2
	ld a, [wBaseEVYield2]
	xor b
	ld [wBaseEVYield2], a
	jr .evreallydone
.evdone1
	ld a, [wBaseEVYield1]
	xor b
	ld [wBaseEVYield1], a
.evreallydone
	call PlaceString
	ret

GetEggGroupString:
	push bc
	dec a
	ld c, a
	ld b, 0
	ld hl, EggGroupStringPointers
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop bc
	ret

EggGroupStringPointers:
	dw MonsterString
	dw AmphibianString
	dw InsectString
	dw AvianString
	dw FieldString
	dw FaeString
	dw PlantString
	dw HumanShapeString
	dw InvertebrateString
	dw InanimateString
	dw AmorphusString
	dw FishString
	dw DittoString
	dw DragonString
	dw NoEggsString

MonsterString:
	db "Monster@"
AmphibianString:
	db "Amphibian@"
InsectString:
	db "Insect@"
AvianString:
	db "Avian@"
FieldString:
	db "Field@"
FaeString:
	db "Fae@"
PlantString:
	db "Plant@"
HumanShapeString:
	db "Humanoid@"
InvertebrateString:
	db "Invertebrate@"
InanimateString:
	db "Inanimate@"
AmorphusString:
	db "Amorphus@"
FishString:
	db "Fish@"
DittoString:
	db "Any@"
DragonString:
	db "Reptile@"
NoEggsString:
	db "Undiscovered@"
; Metric conversion code by TPP Anniversary Crystal 251
; https://github.com/TwitchPlaysPokemon/tppcrystal251pub/blob/public/main.asm
Mul16:
	;[hTmpd][hTmpe]hl = bc * de
	xor a
	ldh [hTmpd], a
	ldh [hTmpe], a
	ld hl, 0
	ld a, 16
	ldh [hProduct], a
.loop
	sla l
	rl h
	ldh a, [hTmpe]
	rla
	ldh [hTmpe], a
	ldh a, [hTmpd]
	rla
	ldh [hTmpd], a
	sla e
	rl d
	jr nc, .noadd
	add hl, bc
	ldh a, [hTmpe]
	adc 0
	ldh [hTmpe], a
	ldh a, [hTmpd]
	adc 0
	ldh [hTmpd], a
.noadd
	ldh a, [hProduct]
	dec a
	ldh [hProduct], a
	jr nz, .loop
	ret

GetDexEntryPointer:: ; 44333
; return dex entry pointer b:de
	push hl
;get relevant pointers
	ld hl, RegionalPokedexEntryPointerTable
	call ProcessPokemonPointertable
	ld bc, 3
	ld a, [wCurForm]
	rst AddNTimes
	ld a, d
	call GetFarByte
	ld b, a
	inc hl
	ld a, d
	call GetFarHalfword
	ld d, h
	ld e, l
	pop hl
	ret

INCLUDE "data/pokemon/variant_dex_entry_pointer_table.asm"


SECTION "Code 11", ROMX

INCLUDE "engine/main_menu.asm"
INCLUDE "engine/search.asm"
INCLUDE "engine/events/celebi.asm"
INCLUDE "engine/tileset_palettes.asm"

Special_MoveTutor: ; 4925b
	call FadeToMenu
	call ClearBGPalettes
	call ClearScreen
	call DelayFrame
	ld b, CGB_PACKPALS
	call GetCGBLayout
	xor a
	ld [wItemAttributeParamBuffer], a
	ld a, [wScriptVar]
	and a
	ld [wPutativeTMHMMove], a
	jr z, .relearner
	ld [wNamedObjectIndexBuffer], a
	call GetMoveName
	call CopyName1
.relearner
	farcall ChooseMonToLearnTMHM
	jr c, .cancel
	jr .enter_loop

.loop
	farcall ChooseMonToLearnTMHM_NoRefresh
	jr c, .cancel
.enter_loop
	call CheckCanLearnMoveTutorMove
	jr nc, .loop
	xor a
	jr .quit

.cancel
	ld a, -1
.quit
	ld [wScriptVar], a
	jp CloseSubmenu

CheckCanLearnMoveTutorMove: ; 492b9
	ld hl, .MenuDataHeader
	call LoadMenuDataHeader

	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	predef GetNick
	pop bc

	ld a, c
	and a
	jr nz, .can_learn
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld a, BANK(Text_TMHMNotCompatible)
	ld hl, Text_TMHMNotCompatible
	call FarPrintText
	jr .didnt_learn

.can_learn
	ld a, [wPutativeTMHMMove]
	and a
	jr z, .reminder
	farcall KnowsMove
	jr c, .didnt_learn

	predef LearnMove
.perform_move_learn
	ld a, b
	and a
	jr z, .didnt_learn

	ld c, HAPPINESS_LEARNMOVE
	farcall ChangeHappiness
	jr .learned

.reminder
	farcall ChooseMoveToRelearn
	jr nc, .can_remind
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld a, BANK(MoveReminderNoMovesText)
	ld hl, MoveReminderNoMovesText
	call FarPrintText
	jr .didnt_learn

.can_remind
	jr z, .didnt_learn
	ld a, [wMoveScreenSelectedMove]
	ld [wPutativeTMHMMove], a
	ld [wNamedObjectIndexBuffer], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	xor a
	ld [wPutativeTMHMMove], a
	jr .perform_move_learn

.didnt_learn
	call ExitMenu
	and a
	ret

.learned
	call ExitMenu
	scf
	ret

.MenuDataHeader: ; 0x4930a
	db $40 ; flags
	db 12, 00 ; start coords
	db 17, 19 ; end coords

AskRememberPassword: ; 4ae12
	call .DoMenu
	ld a, 0 ; not xor a; preserve carry flag
	jr c, .okay
	ld a, $1

.okay
	ld [wScriptVar], a
	ret

.DoMenu: ; 4ae1f
	lb bc, 14, 7
	push bc
	ld hl, YesNoMenuDataHeader
	call CopyMenuDataHeader
	pop bc
	ld a, b
	ld [wMenuBorderLeftCoord], a
	add $5
	ld [wMenuBorderRightCoord], a
	ld a, c
	ld [wMenuBorderTopCoord], a
	add $4
	ld [wMenuBorderBottomCoord], a
	call PushWindow
	call VerticalMenu
	push af
	ld c, 15
	call DelayFrames
	call Buena_ExitMenu
	pop af
	jr c, .refused
	ld a, [wMenuCursorY]
	cp $2
	jr z, .refused
	and a
	ret

.refused
	ld a, $2
	ld [wMenuCursorY], a
	scf
	ret

Buena_ExitMenu: ; 4ae5e
	ldh a, [hOAMUpdate]
	push af
	call ExitMenu
	call UpdateSprites
	xor a
	ldh [hOAMUpdate], a
	call DelayFrame
	ld a, $1
	ldh [hOAMUpdate], a
	call ApplyTilemap
	pop af
	ldh [hOAMUpdate], a
	ret

PackGFX:
INCBIN "gfx/pack/pack.w40.2bpp"
PackFGFX: ; 48e9b
INCBIN "gfx/pack/pack_f.w40.2bpp"


SECTION "Code 12", ROMX

EmptyAllSRAMBanks: ; 4cf1f
	xor a
	call .EmptyBank
	ld a, $1
	call .EmptyBank
	ld a, $2
	call .EmptyBank
	ld a, $3
	; fallthrough

.EmptyBank: ; 4cf34
	call GetSRAMBank
	ld hl, SRAM_Begin
	ld bc, SRAM_End - SRAM_Begin
	xor a
	call ByteFill
	jp CloseSRAM

CheckSave:: ; 4cffe
	ld a, BANK(sCheckValue1)
	call GetSRAMBank
	ld a, [sCheckValue1]
	ld b, a
	ld a, [sCheckValue2]
	ld c, a
	call CloseSRAM
	ld a, b
	cp SAVE_CHECK_VALUE_1
	jr nz, .ok
	ld a, c
	cp SAVE_CHECK_VALUE_2
	jr nz, .ok
	ld c, $1
	ret

.ok
	ld c, $0
	ret

INCLUDE "data/maps/scenes.asm"

Shrink1Pic: ; 4d249
INCBIN "gfx/new_game/shrink1.2bpp.lz"

Shrink2Pic: ; 4d2d9
INCBIN "gfx/new_game/shrink2.2bpp.lz"

_ResetClock: ; 4d3b1
	farcall BlankScreen
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call LoadStandardFont
	call LoadFontsExtra
	ld de, MUSIC_MAIN_MENU
	call PlayMusic
	ld hl, .text_askreset
	call PrintText
	ld hl, .NoYes_MenuDataHeader
	call CopyMenuDataHeader
	call VerticalMenu
	ret c
	ld a, [wMenuCursorY]
	cp $1
	ret z
	ld a, BANK(sRTCStatusFlags)
	call GetSRAMBank
	ld a, $80
	ld [sRTCStatusFlags], a
	call CloseSRAM
	ld hl, .text_okay
	jp PrintText

.text_okay ; 0x4d3fe
	; Select CONTINUE & reset settings.
	text_jump UnknownText_0x1c55db
	db "@"

.text_askreset ; 0x4d408
	; Reset the clock?
	text_jump UnknownText_0x1c561c
	db "@"

.NoYes_MenuDataHeader: ; 0x4d40d
	db $00 ; flags
	db 07, 14 ; start coords
	db 11, 19 ; end coords
	dw .NoYes_MenuData2
	db 1 ; default option

.NoYes_MenuData2: ; 0x4d415
	db $c0 ; flags
	db 2 ; items
	db "No@"
	db "Yes@"

_DeleteSaveData: ; 4d54c
	farcall BlankScreen
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call LoadStandardFont
	call LoadFontsExtra
	ld de, MUSIC_MAIN_MENU
	call PlayMusic
	ld hl, .Text_ClearAllSaveData
	call PrintText
	ld hl, TitleScreenNoYesMenuDataHeader
	call CopyMenuDataHeader
	call VerticalMenu
	ret c
	ld a, [wMenuCursorY]
	cp $1
	ret z
	farjp EmptyAllSRAMBanks

.Text_ClearAllSaveData: ; 0x4d580
	; Clear all save data?
	text_jump UnknownText_0x1c564a
	db "@"

_ResetInitialOptions:
	farcall BlankScreen
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call LoadStandardFont
	call LoadFontsExtra
	ld de, MUSIC_MAIN_MENU
	call PlayMusic
	ld hl, .Text_ResetInitialOptions
	call PrintText
	ld hl, TitleScreenNoYesMenuDataHeader
	call CopyMenuDataHeader
	call VerticalMenu
	ret c
	ld a, [wMenuCursorY]
	cp $1
	ret z
	ld a, [wInitialOptions]
	set RESET_INIT_OPTS, a
	ld [wInitialOptions], a
	ld a, BANK(sOptions)
	call GetSRAMBank
	ld a, [wInitialOptions]
	ld [sOptions + 6], a ; sInitialOptions
	jp CloseSRAM

.Text_ResetInitialOptions: ; 0x4d580
	; Reset the initial game options?
	text_jump ResetInitialOptionsText
	db "@"

TitleScreenNoYesMenuDataHeader: ; 0x4d585
	db $00 ; flags
	db 07, 14 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2: ; 0x4d58d
	db $c0 ; flags
	db 2 ; items
	db "No@"
	db "Yes@"

FlagPredef: ; 4d7c1
; Perform action b on flag c in flag array hl.
; If checking a flag, check flag array d:hl unless d is 0.

; For longer flag arrays, see FlagAction.

	push hl
	push bc

; Divide by 8 to get the byte we want.
	push bc
	srl c
	srl c
	srl c
	ld b, 0
	add hl, bc
	pop bc

; Which bit we want from the byte
	ld a, c
	and 7
	ld c, a

; Shift left until we can mask the bit
	ld a, 1
	jr z, .shifted
.shift
	add a
	dec c
	jr nz, .shift
.shifted
	ld c, a

; What are we doing to this flag?
	dec b
	jr z, .set ; 1
	dec b
	jr z, .check ; 2

.reset
	ld a, c
	cpl
	and [hl]
	ld [hl], a
	jr .done

.set
	ld a, [hl]
	or c
	ld [hl], a
	jr .done

.check
	ld a, d
	cp 0
	jr nz, .farcheck

	ld a, [hl]
	and c
	jr .done

.farcheck
	call GetFarWRAMByte
	and c

.done
	pop bc
	pop hl
	ld c, a
	ret

GetTrademonFrontpic: ; 4d7fd
	ld hl, wOTTrademonGroup
	ld de, VTiles2
	push de
	predef GetPartyMonGroupSpeciesAndForm
	call GetBaseData ;form is known
	pop de
	predef FrontpicPredef
	ret

AnimateTrademonFrontpic: ; 4d81e
	ld a, [wOTTrademonSpecies]
	farcall IsAPokemon
	ret c
	farcall ShowOTTrademonStats
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wOTTrademonPersonality]
	ld [wTempMonPersonality], a
	ld a, [wOTTrademonPersonality + 1]
	ld [wTempMonPersonality + 1], a
	ld b, CGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetCGBLayout
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	farcall TradeAnim_ShowGetmonFrontpic
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	hlcoord 7, 2
	lb de, $0, ANIM_MON_TRADE
	predef AnimateFrontpic
	ret

CheckPokerus: ; 4d860
; Return carry if a monster in your party has Pokerus

; Get number of monsters to iterate over
	ld a, [wPartyCount]
	and a
	jr z, .NoPokerus
	ld b, a
; Check each monster in the party for Pokerus
	ld hl, wPartyMon1PokerusStatus
	ld de, PARTYMON_STRUCT_LENGTH
.Check:
	ld a, [hl]
	and $0f ; only the bottom nybble is used
	jr nz, .HasPokerus
; Next PartyMon
	add hl, de
	dec b
	jr nz, .Check
.NoPokerus:
	and a
	ret
.HasPokerus:
	scf
	ret

Special_CheckForLuckyNumberWinners: ; 4d87a
	xor a
	ld [wScriptVar], a
	ld [wFoundMatchingIDInParty], a
	ld a, [wPartyCount]
	and a
	ret z
	ld d, a
	ld hl, wPartyMon1ID
	ld bc, wPartySpecies
.PartyLoop:
	ld a, [bc]
	inc bc
	cp EGG
	call nz, .CompareLuckyNumberToMonID
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	dec d
	jr nz, .PartyLoop
	ld a, BANK(sBox)
	call GetSRAMBank
	ld a, [sBoxCount]
	and a
	jr z, .SkipOpenBox
	ld d, a
	ld hl, sBoxMon1ID
	ld bc, sBoxSpecies
.OpenBoxLoop:
	ld a, [bc]
	inc bc
	cp EGG
	jr z, .SkipOpenBoxMon
	call .CompareLuckyNumberToMonID
	jr nc, .SkipOpenBoxMon
	ld a, 1
	ld [wFoundMatchingIDInParty], a

.SkipOpenBoxMon:
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	dec d
	jr nz, .OpenBoxLoop

.SkipOpenBox:
	call CloseSRAM
	ld c, $0
.BoxesLoop:
	ld a, [wCurBox]
	and $f
	cp c
	jr z, .SkipBox
	ld hl, .BoxBankAddresses
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	call GetSRAMBank
	ld a, [hli]
	ld h, [hl]
	ld l, a ; hl now contains the address of the loaded box in SRAM
	ld a, [hl]
	and a
	jr z, .SkipBox ; no mons in this box
	push bc
	ld b, h
	ld c, l
	inc bc
	ld de, sBoxMon1ID - sBox
	add hl, de
	ld d, a
.BoxNLoop:
	ld a, [bc]
	inc bc
	cp EGG
	jr z, .SkipBoxMon

	call .CompareLuckyNumberToMonID ; sets wScriptVar and wCurPartySpecies appropriately
	jr nc, .SkipBoxMon
	ld a, 1
	ld [wFoundMatchingIDInParty], a

.SkipBoxMon:
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	dec d
	jr nz, .BoxNLoop
	pop bc

.SkipBox:
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .BoxesLoop

	call CloseSRAM
	ld a, [wScriptVar]
	and a
	ret z ; found nothing
	ld a, [wFoundMatchingIDInParty]
	and a
	push af
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld hl, .FoundPartymonText
	pop af
	jr z, .print
	ld hl, .FoundBoxmonText

.print
	jp PrintText

.CompareLuckyNumberToMonID: ; 4d939
	push bc
	push de
	push hl
	ld d, h
	ld e, l
	ld hl, wBuffer1
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	predef PrintNum
	ld hl, wLuckyNumberDigitsBuffer
	ld de, wLuckyIDNumber
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	predef PrintNum
	lb bc, 5, 0
	ld hl, wLuckyNumberDigitsBuffer + 4
	ld de, wBuffer1 + 4
.loop
	ld a, [de]
	cp [hl]
	jr nz, .done
	dec de
	dec hl
	inc c
	dec b
	jr nz, .loop

.done
	pop hl
	push hl
	ld de, -6
	add hl, de
	ld a, [hl]
	pop hl
	pop de
	push af
	ld a, c
	ld b, 1
	cp 5
	jr z, .okay
	ld b, 2
	cp 4
	jr z, .okay
	ld b, 3
	cp 3
	jr nc, .okay
	ld b, 4
	cp 2
	jr nz, .nomatch

.okay
	inc b
	ld a, [wScriptVar]
	and a
	jr z, .bettermatch
	cp b
	jr c, .nomatch

.bettermatch
	dec b
	ld a, b
	ld [wScriptVar], a
	pop bc
	ld a, b
	ld [wCurPartySpecies], a
	pop bc
	scf
	ret

.nomatch
	pop bc
	pop bc
	and a
	ret

.BoxBankAddresses: ; 4d99f
	dba sBox1
	dba sBox2
	dba sBox3
	dba sBox4
	dba sBox5
	dba sBox6
	dba sBox7
	dba sBox8
	dba sBox9
	dba sBox10
	dba sBox11
	dba sBox12
	dba sBox13
	dba sBox14

.FoundPartymonText: ; 0x4d9c9
	; Congratulations! We have a match with the ID number of @  in your party.
	text_jump UnknownText_0x1c1261
	db "@"

.FoundBoxmonText: ; 0x4d9ce
	; Congratulations! We have a match with the ID number of @  in your PC BOX.
	text_jump UnknownText_0x1c12ae
	db "@"

Special_PrintTodaysLuckyNumber: ; 4d9d3
	ld hl, wStringBuffer3
	ld de, wLuckyIDNumber
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	predef PrintNum
	ld a, "@"
	ld [wStringBuffer3 + 5], a
	ret

CheckPartyFullAfterContest: ; 4d9e5
	ld hl, wContestMonGroup
	predef GetPartyMonGroupSpeciesAndForm
	ld a, [wContestMon]
	and a
	jp z, .DidntCatchAnything
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetBaseData ;form is known
	ld hl, wPartyCount
	ld a, [hl]
	cp 6
	jp nc, .TryAddToBox
	inc a
	ld [hl], a
	ld c, a
	ld b, $0
	add hl, bc
	ld a, [wContestMon]
	ld [hli], a
	ld [wCurSpecies], a
	ld a, $ff
	ld [hl], a
	ld hl, wPartyMon1Group
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, wContestMon
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOT
	farcall SkipPlayerNames
	ld d, h
	ld e, l
	ld hl, wPlayerName
	rst CopyBytes
	ld a, [wCurPartySpecies]
	ld [wd265], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	call GiveANickname_YesNo
	jr c, .Party_SkipNickname
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	xor a
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	farcall InitNickname

.Party_SkipNickname:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	farcall SkipPokemonNames
	ld d, h
	ld e, l
	ld hl, wMonOrItemNameBuffer
	rst CopyBytes
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Level
	predef GetPartyLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, PARK_BALL
	ld [wCurItem], a
	call SetCaughtData
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtLocation
	predef GetPartyLocation
	;ld a, NATIONAL_PARK
	ld [hl], a
	xor a
	ld [wContestMon], a
	and a
	ld [wScriptVar], a
	ret

.TryAddToBox: ; 4daa3
	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld hl, sBoxCount
	ld a, [hl]
	cp MONS_PER_BOX
	call CloseSRAM
	jr nc, .BoxFull
	xor a
	ld [wCurPartyMon], a
	ld hl, wContestMon
	ld de, wBufferMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	ld hl, wPlayerName
	ld de, wBufferMonOT
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes
	farcall InsertPokemonIntoBox
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	call GiveANickname_YesNo
	ld hl, wStringBuffer1
	jr c, .Box_SkipNickname
	ld a, BOXMON
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	farcall InitNickname
	ld hl, wMonOrItemNameBuffer

.Box_SkipNickname:
	ld a, BANK(sBoxMonNicknames)
	call GetSRAMBank
	ld de, sBoxMonNicknames
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	call CloseSRAM

.BoxFull:
	ld a, BANK(sBoxMon1Level)
	call GetSRAMBank
	ld a, [sBoxMon1Level]
	ld [wCurPartyLevel], a
	call CloseSRAM
	call SetBoxMonCaughtData
	ld a, BANK(sBoxMon1CaughtLocation)
	call GetSRAMBank
	ld hl, sBoxMon1CaughtLocation
	;ld a, NATIONAL_PARK
	ld [hl], a
	call CloseSRAM
	xor a
	ld [wContestMon], a
	ld a, $1
	ld [wScriptVar], a
	ret

.DidntCatchAnything: ; 4db35
	ld a, $2
	ld [wScriptVar], a
	ret

GiveANickname_YesNo: ; 4db3b
	ld a, [wInitialOptions]
	bit NUZLOCKE_MODE, a
	jr nz, .AlwaysNickname
	ld hl, TextJump_GiveANickname
	call PrintText
	jp YesNoBox

.AlwaysNickname:
	ld a, 1
	and a
	ret

TextJump_GiveANickname: ; 0x4db44
	; Give a nickname to the @  you received?
	text_jump UnknownText_0x1c12fc
	db "@"

SetCaughtData: ; 4db49
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtData
	predef GetPartyLocation
SetBoxmonOrEggmonCaughtData: ; 4db53
	; CaughtGender
	ld b, 0
	; CaughtTime
	ld a, [wTimeOfDay]
	rrca
	rrca
	rrca
	or b
	ld b, a
	; CaughtBall
	ld a, [wCurItem]
	and CAUGHTBALL_MASK
	or b
	ld [hli], a
	; CaughtLevel
	ld a, [wCurPartyLevel]
	ld [hli], a
	; CaughtLocation
	call GetCurrentLandmark
	ld [hl], a
	ret

SetBoxMonCaughtData: ; 4db83
	ld a, BANK(sBoxMon1CaughtData)
	call GetSRAMBank
	ld hl, sBoxMon1CaughtData
	call SetBoxmonOrEggmonCaughtData
	jp CloseSRAM

SetGiftBoxMonCaughtData: ; 4db92
	push bc
	ld a, BANK(sBoxMon1CaughtData)
	call GetSRAMBank
	ld hl, sBoxMon1CaughtData
	pop bc
	call SetGiftMonCaughtData
	jp CloseSRAM

SetGiftPartyMonCaughtData: ; 4dba3
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtData
	predef GetPartyLocation
SetGiftMonCaughtData: ; 4dbaf
	; CaughtGender
	; b contains it
	; CaughtTime
	ld a, [wTimeOfDay]
	inc a
	rrca
	rrca
	rrca
	or b
	ld b, a
	; CaughtBall
	; c contains it
	ld a, c
	and CAUGHTBALL_MASK
	or b
	ld [hli], a
	; CaughtLevel
	; Met in a trade
	xor a
	ld [hli], a
	; CaughtLocation
	; Unknown location
	ld [hl], a
	ret

SetEggMonCaughtData: ; 4dbb8 (13:5bb8)
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1CaughtData
	predef GetPartyLocation
	ld a, [wCurPartyLevel]
	push af
	ld a, EGG_LEVEL
	ld [wCurPartyLevel], a
	ld a, POKE_BALL
	ld [wCurItem], a
	call SetBoxmonOrEggmonCaughtData
	pop af
	ld [wCurPartyLevel], a
	ret

_FindGreaterThanThatLevel: ; 4dbd2
	ld hl, wPartyMon1Level
	jp FindGreaterThanThatLevel

_FindAtLeastThatHappy: ; 4dbd9
	ld hl, wPartyMon1Happiness
	jp FindAtLeastThatHappy

_FindThatSpecies: ; 4dbe0
	ld hl, wPartyMon1
	jp FindThatSpecies

_FindThatSpeciesYourTrainerID: ; 4dbe6
	ld hl, wPartyMon1
	call FindThatSpecies
	ret z
	ld a, c
	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wPlayerID]
	cp [hl]
	jr nz, .nope
	inc hl
	ld a, [wPlayerID + 1]
	cp [hl]
	jr nz, .nope
	ld a, $1
	and a
	ret

.nope
	xor a
	ret

FindAtLeastThatHappy: ; 4dc0a
; Sets the bits for the Pokemon that have a happiness greater than or equal to b.
; The lowest bits are used.  Sets z if no Pokemon in your party is at least that happy.
	ld c, $0
	ld a, [wPartyCount]
	ld d, a
.loop
	ld a, d
	dec a
	push hl
	predef GetPartyLocation
	ld a, b
	cp [hl]
	pop hl
	jr z, .greater_equal
	jr nc, .lower

.greater_equal
	ld a, c
	or $1
	ld c, a

.lower
	sla c
	dec d
	jr nz, .loop
	call RetroactivelyIgnoreEggs
	ld a, c
	and a
	ret

FindGreaterThanThatLevel: ; 4dc31
	ld c, $0
	ld a, [wPartyCount]
	ld d, a
.loop
	ld a, d
	dec a
	push hl
	predef GetPartyLocation
	ld a, b
	cp [hl]
	pop hl
	jr c, .greater
	ld a, c
	or $1
	ld c, a

.greater
	sla c
	dec d
	jr nz, .loop
	call RetroactivelyIgnoreEggs
	ld a, c
	and a
	ret

FindThatSpecies: ; 4dc56
; Find species b in your party.
; If you have no Pokemon, returns c = -1 and z.
; If that species is in your party, returns its location in c, and nz.
; Otherwise, returns z.
	ld c, -1
	ld hl, wPartySpecies
.loop
	ld a, [hli]
	cp -1
	ret z
	inc c
	cp b
	jr nz, .loop
	ld a, $1
	and a
	ret

RetroactivelyIgnoreEggs: ; 4dc67
	ld e, -2
	ld hl, wPartySpecies
.loop
	ld a, [hli]
	cp -1
	ret z
	cp EGG
	jr nz, .skip_notegg
	ld a, c
	and e
	ld c, a

.skip_notegg
	rlc e
	jr .loop

INCLUDE "engine/stats_screen.asm"

INCLUDE "engine/evolution_animation.asm"

InitDisplayForHallOfFame: ; 4e881
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	call DisableLCD
	call LoadStandardFont
	call LoadFontsBattleExtra
	hlbgcoord 0, 0
	ld bc, VBGMap1 - VBGMap0
	ld a, " "
	call ByteFill
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call ByteFill
	xor a
	ldh [hSCY], a
	ldh [hSCX], a
	call EnableLCD
	ld hl, .SavingRecordDontTurnOff
	call PrintText
	call ApplyAttrAndTilemapInVBlank
	jp SetPalettes

.SavingRecordDontTurnOff: ; 0x4e8bd
	; SAVING RECORD… DON'T TURN OFF!
	text_jump UnknownText_0x1bd39e
	db "@"

InitDisplayForLeafCredits: ; 4e8c2
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	call DisableLCD
	call LoadStandardFont
	call LoadFontsBattleExtra
	hlbgcoord 0, 0
	ld bc, VBGMap1 - VBGMap0
	ld a, " "
	call ByteFill
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call ByteFill
	ld hl, wUnknBGPals
	ld c, 4 tiles
.load_white_palettes
if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ld [hli], a
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ld [hli], a
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [hli], a
endc
	dec c
	jr nz, .load_white_palettes
	xor a
	ldh [hSCY], a
	ldh [hSCX], a
	call EnableLCD
	call ApplyAttrAndTilemapInVBlank
	jp SetPalettes

ResetDisplayBetweenHallOfFameMons: ; 4e906
	ldh a, [rSVBK]
	push af
	ld a, $6
	ldh [rSVBK], a
	ld hl, wScratchTileMap
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, " "
	call ByteFill
	hlbgcoord 0, 0
	ld de, wScratchTileMap
	lb bc, $0, $40
	call Request2bpp
	pop af
	ldh [rSVBK], a
	ret

INCLUDE "engine/battle/sliding_intro.asm"

CheckBattleEffects: ; 4ea44
; Return carry if battle scene is turned off.
	ld a, [wOptions1]
	bit BATTLE_EFFECTS, a
	jr z, .off
	and a
	ret
.off
	scf
	ret

INCLUDE "engine/bsod.asm"

INCLUDE "engine/events/stats_judge.asm"

INCLUDE "engine/events/poisonstep.asm"
INCLUDE "engine/events/squirtbottle.asm"
INCLUDE "engine/events/card_key.asm"
INCLUDE "engine/events/basement_key.asm"
INCLUDE "engine/events/sacred_ash.asm"


SECTION "Code 13", ROMX

INCLUDE "engine/party_menu.asm"

CopyPkmnToTempMon: ; 5084a
; gets the BaseData of a Pkmn
; and copys the PkmnStructure to wTempMon

	ld a, [wCurPartyMon]
	ld e, a
	call GetPkmnSpecies
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData

	ld a, [wMonType]
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	and a
	jr z, .copywholestruct
	ld hl, wOTPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	cp OTPARTYMON
	jr z, .copywholestruct
	ld bc, BOXMON_STRUCT_LENGTH
	farjp CopyBoxmonToTempMon

.copywholestruct
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld de, wTempMon
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	ret

CalcwBufferMonStats: ; 5088b
	ld bc, wBufferMon
	jr _TempMonStatsCalculation

CalcTempmonStats: ; 50890
	ld bc, wTempMon ; the mon is in bc
_TempMonStatsCalculation: ; 50893
	ld hl, MON_LEVEL
	add hl, bc ; level in hl now
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld hl, MON_MAXHP ; max hp in hl
	add hl, bc
	ld d, h ; max hp in de now
	ld e, l
	ld hl, MON_EVS - 1
	add hl, bc ; last byte of exp here, which is just one before the evs
	push bc ; mon's group is pushed
	ld b, TRUE
	predef CalcPkmnStats
	pop bc ; group is popped
	ld hl, MON_HP
	add hl, bc ; hp in hl now
	ld d, h ; hp in de now
	ld e, l
	push hl
	ld hl, MON_IS_EGG
	add hl, bc
	bit MON_IS_EGG_F, [hl]
	pop hl
	jr z, .not_egg
	xor a
	ld [de], a
	inc de
	ld [de], a
	jr .zero_status

.not_egg
	push bc ; group is pushed
	ld hl, MON_MAXHP
	add hl, bc
	ld bc, 2
	rst CopyBytes ; hp is copied from max to current
	pop bc

.zero_status
	ld hl, MON_STATUS
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ret
GetPkmnSpecies: ; 508d5
; [wMonType] has the type of the Pkmn
; e = Nr. of Pkmn (i.e. [wCurPartyMon])

	ld a, [wMonType]
	and a ; PARTYMON
	jr z, .partymon
	cp OTPARTYMON
	jr z, .otpartymon
	cp BOXMON
	jr z, .boxmon
	cp BREEDMON
	jr z, .breedmon
	; WILDMON

.partymon
	ld hl, wPartySpecies
	jr .done

.otpartymon
	ld hl, wOTPartySpecies
	jr .done

.boxmon
	ld a, BANK(sBoxSpecies)
	call GetSRAMBank
	ld hl, sBoxSpecies
	call .done
	jp CloseSRAM

.breedmon
	ld a, [wBreedMon1Species]
	jr .done2

.done
	ld d, 0
	add hl, de
	ld a, [hl]

.done2
	ld [wCurPartySpecies], a
	ret

INCLUDE "data/types/names.asm"

PrintNature:
; Print nature b at hl.
	push hl
	ld hl, NatureNames
	jr _PrintNatureProperty

PrintNatureIndicators:
; Print indicators for nature b at hl.
	push hl
	ld hl, NatureIndicators
_PrintNatureProperty:
	ld a, b
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	jp PlaceString

INCLUDE "data/natures.asm"

DrawPlayerHP: ; 50b0a
	ld a, $1
	ld [wWhichHPBar], a
	push hl
	push bc
	ld a, [wMonType]
	cp BOXMON
	jr z, .at_least_1_hp

	ld a, [wTempMonHP]
	ld b, a
	ld a, [wTempMonHP + 1]
	ld c, a

; Any HP?
	or b
	jr nz, .at_least_1_hp

	xor a
	ld c, a
	ld e, a
	ld a, 6
	ld d, a
	jp .fainted

.at_least_1_hp
	ld a, [wTempMonMaxHP]
	ld d, a
	ld a, [wTempMonMaxHP + 1]
	ld e, a
	ld a, [wMonType]
	cp BOXMON
	jr nz, .not_boxmon

	ld b, d
	ld c, e

.not_boxmon
	predef ComputeHPBarPixels
	ld a, 6
	ld d, a
	ld c, a

.fainted
	ld a, c
	pop bc
	ld c, a
	pop hl
	push de
	push hl
	push hl
	farcall DrawBattleHPBar
	pop hl

; Print HP
	ld bc, $15 ; move (1,1)
	add hl, bc
	ld de, wTempMonHP
	ld a, [wMonType]
	cp BOXMON
	jr nz, .not_boxmon_2
	ld de, wTempMonMaxHP
.not_boxmon_2
	lb bc, 2, 3
	predef PrintNum

	ld a, "/"
	ld [hli], a

; Print max HP
	ld de, wTempMonMaxHP
	lb bc, 2, 3
	predef PrintNum
	pop hl
	pop de
	ret

PrintTempMonStats: ; 50b7b
; Print wTempMon's stats at hl, with spacing bc.
	push bc
	push hl
	ld de, MostStatNames
	call PlaceString
	pop hl
	pop bc

	push bc
	push hl
	push hl
	ld a, [wTempMonNature]
	ld b, a
	farcall GetNature
	pop hl
rept 8
	inc hl
endr
	predef PrintNatureIndicators
	pop hl
	pop bc

	add hl, bc
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld de, wTempMonAttack
	lb bc, 2, 3
	call .PrintStat
	ld de, wTempMonDefense
	call .PrintStat
	ld de, wTempMonSpclAtk
	call .PrintStat
	ld de, wTempMonSpclDef
	call .PrintStat
	ld de, wTempMonSpeed
	predef_jump PrintNum

.PrintStat: ; 50bab
	push hl
	predef PrintNum
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ret

AllStatNames:
	db   "Health<NL>"
MostStatNames:
	db   "Attack"
	next "Defense"
	next "Spcl.Atk"
	next "Spcl.Def"
	next "Speed"
	next "@"

PrintStatDifferences: ; 50b7b
	ld a, [wTextBoxFlags]
	push af
	set NO_LINE_SPACING, a
	ld [wTextBoxFlags], a

	; Figure out length of largest modifier (+x, +xx or +xxx)
	ld hl, wStringBuffer3
	ld c, 6
	ld b, 1
.loop
	call .ComputeStatDifference
	inc hl
	inc hl
	ld a, [wStringBuffer3 + 12]
	and a
	ld a, [wStringBuffer3 + 13]
	ld d, 4
	jr nz, .got_digit_length
	cp 100
	jr nc, .got_digit_length
	dec d
	cp 10
	jr nc, .got_digit_length
	dec d
.got_digit_length
	ld a, b
	cp d
	jr nc, .digit_length_not_larger
	ld b, d
.digit_length_not_larger
	dec c
	jr nz, .loop

	ld a, b
	ld [wStringBuffer3 + 14], a
	ld de, wStringBuffer3
	ld b, 1 ; show stat+difference
	call .PrintStatDisplay
	ld de, wTempMonMaxHP
	ld b, 0 ; just show stat
	call .PrintStatDisplay
	pop af
	ld [wTextBoxFlags], a
	ret

.ComputeStatDifference:
	push de
	push bc
	ld a, [hli]
	cpl
	ld d, a
	ld a, [hld]
	cpl
	add 1
	jr nc, .dont_inc_b
	inc d
.dont_inc_b
	ld e, a
	ld bc, wTempMonMaxHP - wStringBuffer3
	add hl, bc
	ld a, [hli]
	ld b, a
	ld a, [hld]
	ld c, a
	push bc
	ld bc, wStringBuffer3 - wTempMonMaxHP
	add hl, bc
	pop bc
	push hl
	ld h, b
	ld l, c
	add hl, de
	ld a, h
	ld [wStringBuffer3 + 12], a
	ld a, l
	ld [wStringBuffer3 + 13], a
	pop hl
	pop bc
	pop de
	ret

.PrintStatDisplay:
	push de
	push bc
	call .PrintStatNames
	ld bc, 5
	add hl, bc
	pop bc
	pop de
	call .PrintStats
	jp WaitPressAorB_BlinkCursor

.PrintStatNames:
	ld a, [wStringBuffer3 + 14]
	push af
	hlcoord 10, 5
.coord_loop
	dec hl
	dec a
	jr nz, .coord_loop
	pop af
	push af
	ld b, 6
	ld c, 8
	add c
	ld c, a
	call TextBox
	hlcoord 8, 5, wAttrMap
	ld b, 6
	ld c, 8
	xor a
	call FillBoxWithByte
	pop af
	push af
	hlcoord 11, 6
.coord_loop2
	dec hl
	dec a
	jr nz, .coord_loop2
	pop af
	push hl
	ld de, AllStatNames
	call PlaceString
	pop hl
	farjp ApplyAttrMap

.PrintStats:
	; Some screen movement is done because internal stat order is different
	; from the order we want to display.
	; Printing: HP, Atk, Def, SAtk, SDef, Speed
	; Internal: HP, Atk, Def, Speed, SAtk, SDef
	call .PrintStat ; HP
	call .PrintStat ; Attack
	call .PrintStat ; Defense

	push bc
	ld bc, SCREEN_WIDTH * 2
	add hl, bc
	pop bc
	call .PrintStat ; Speed

	push bc
	ld bc, -SCREEN_WIDTH * 3
	add hl, bc
	pop bc
	call .PrintStat
.PrintStat:
	push bc
	push hl
	push de
	ld a, b
	lb bc, 2, 3
	push af
	predef PrintNum
	pop af
	and a
	jr z, .mod_done
	pop hl
	call .ComputeStatDifference
	ld d, h
	ld e, l
	pop hl
	push hl
	inc hl
	inc hl
	inc hl
	ld a, "+"
	ld [hli], a

	ld b, 2
	ld a, [wStringBuffer3 + 14]
	ld c, a
	dec c
	push de
	ld de, wStringBuffer3 + 12
	predef PrintNum
.mod_done
	pop de
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	inc de
	inc de
	pop bc
	ret

GetShininess:
; Return the shininess of a given monster (wCurPartyMon/wCurOTMon/CurWildMon)
; based on wMonType.

; Figure out what type of monster struct we're looking at.

; 0: PartyMon
	ld hl, wPartyMon1Shiny
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wMonType]
	and a
	jr z, .PartyMon

; 1: OTPartyMon
	ld hl, wOTPartyMon1Shiny
	dec a
	jr z, .PartyMon

; 2: sBoxMon
	ld hl, sBoxMon1Shiny
	ld bc, BOXMON_STRUCT_LENGTH
	dec a
	jr z, .sBoxMon

; 3: Other
	ld hl, wTempMonShiny
	dec a
	jr z, .Shininess

; else: WildMon
	ld hl, wEnemyMonShiny
	jr .Shininess

; Get our place in the party/box.

.PartyMon:
.sBoxMon
	ld a, [wCurPartyMon]
	rst AddNTimes

.Shininess:

; sBoxMon data is read directly from SRAM.
	ld a, [wMonType]
	cp BOXMON
	ld a, 1
	call z, GetSRAMBank

; Shininess
	ld a, [hl]
	and SHINY_MASK
	ld b, a

; Close SRAM if we were dealing with a sBoxMon.
	ld a, [wMonType]
	cp BOXMON
	call z, CloseSRAM

; Check the shininess value
	ld a, b
	and a
	ret

GetGender: ; 50bdd
; Return the gender of a given monster (wCurPartyMon/wCurOTMon/CurWildMon)
; based on wMonType.

; return values:
; a = 1: f = nc|nz; male
; a = 0: f = nc|z;  female
;        f = c:  genderless

; This is determined by checking the Personality gender value,
; which was already determined by the species' gender ratio.

; Figure out what type of monster struct we're looking at.

; 0: PartyMon
	ld hl, wPartyMon1Gender
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wMonType]
	and a
	jr z, .PartyMon

; 1: OTPartyMon
	ld hl, wOTPartyMon1Gender
	dec a
	jr z, .PartyMon

; 2: sBoxMon
	ld hl, sBoxMon1Gender
	ld bc, BOXMON_STRUCT_LENGTH
	dec a
	jr z, .sBoxMon

; 3: Other (used for breeding, possibly elsewhere)
	ld hl, wTempMonGender
	dec a
	jr z, .Gender

; else: WildMon
	ld hl, wEnemyMonGender
	jr .Gender

; Get our place in the party/box.

.PartyMon:
.sBoxMon
	ld a, [wCurPartyMon]
	rst AddNTimes

.Gender:

; sBoxMon data is read directly from SRAM.
	ld a, [wMonType]
	cp BOXMON
	ld a, 1
	call z, GetSRAMBank

; Gender
	ld a, [hl]
	and GENDER_MASK
	ld b, a

; Close SRAM if we were dealing with a sBoxMon.
	ld a, [wMonType]
	cp BOXMON
	call z, CloseSRAM

; We need the gender ratio to do anything with this.
	push bc
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	farcall GetRelevantBaseData
	ld bc, BASEMON_GENDER
	add hl, bc
	ld a, d ;bank
	pop bc
	call GetFarByte
	swap a
	and $f

; Fixed values ignore the Personality gender value.
	cp GENDERLESS
	jr z, .Genderless
	and a ; cp ALL_MALE
	jr z, .Male
	cp ALL_FEMALE
	jr z, .Female

; Otherwise, use the Personality gender value directly.
	ld a, b
	and a ; cp MALE
	jr z, .Male

.Female:
	xor a
	ret

.Male:
	ld a, 1
	and a
	ret

.Genderless:
	scf
	ret

ListMovePP: ; 50c50
	ld a, [wNumMoves]
	inc a
	ld c, a
	ld a, NUM_MOVES
	sub c
	ld b, a
	push hl
	ld a, [wBuffer1]
	ld e, a
	ld d, $0
	ld a, "<BOLDP>"
	call .load_loop
	ld a, b
	and a
	jr z, .skip
	ld c, a
	ld a, "-"
	call .load_loop

.skip
	pop hl
	inc hl
	inc hl
	inc hl
	ld d, h
	ld e, l
	ld hl, wTempMonMoves
	ld b, 0
.loop
	ld a, [hli]
	and a
	ret z
	push bc
	push hl
	push de
	ld hl, wMenuCursorY
	ld a, [hl]
	push af
	ld [hl], b
	push hl
	ld a, [wMonType]
	push af
	ld a, BOXMON
	ld [wMonType], a
	farcall GetMaxPPOfMove
	pop af
	ld [wMonType], a
	pop hl
	pop af
	ld [hl], a
	pop de
	pop hl
	push hl
	ld bc, wTempMonCurPP - (wTempMonMoves + 1)
	add hl, bc
	ld a, [hl]
	ld [wStringBuffer1 + 4], a
	ld h, d
	ld l, e
	push hl
	ld de, wStringBuffer1 + 4
	lb bc, 1, 2
	predef PrintNum
	ld a, "/"
	ld [hli], a
	ld de, wd265
	lb bc, 1, 2
	predef PrintNum
	pop hl
	ld a, [wBuffer1]
	ld e, a
	ld d, 0
	add hl, de
	ld d, h
	ld e, l
	pop hl
	pop bc
	inc b
	ld a, b
	cp NUM_MOVES
	jr nz, .loop
	ret

.load_loop ; 50cc9
	ld [hli], a
	ld [hld], a
	add hl, de
	dec c
	jr nz, .load_loop
	ret

GetStatusConditionIndex:
; de points to status, e.g. from a party_struct or battle_struct
; return the status condition index in a
	push de
	inc de ;inc from status to PP
rept 4
	inc de
endr
	ld a, [de] ;load one byte of cur HP
	ld b, a
	inc de
	ld a, [de] ;load another byte of cur HP
	or b ;or them together, if there is any HP at all the output won't be z
	pop de
	jr z, .fnt ;if we have zero HP, we're fainted
	ld a, [de]
	ld b, a
	and SLP
	ld a, 0
	jr nz, .slp
	xor a
	bit TOX, b
	jr nz, .tox
	bit PSN, b
	jr nz, .psn
	bit PAR, b
	jr nz, .par
	bit BRN, b
	jr nz, .brn
	bit FRZ, b
	jr nz, .frz
	jr .done
.tox
	inc a
.fnt
	inc a
.frz
	inc a
.brn
	inc a
.slp
	inc a
.par
	inc a
.psn
	inc a
.done
	ret

PlaceStatusString: ; 50d0a
	xor a
	call GetStatusConditionIndex
	and a
	ret z
	push de

	ld d, 0
	ld e, a
	push hl
	ld hl, StatusStringPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop hl
	call PlaceString
	pop de
	ld a, $1
	and a
	ret

StatusStringPointers:
	dw OKString
	dw PsnString
	dw ParString
	dw SlpString
	dw BrnString
	dw FrzString
	dw FntString
	dw ToxString

OKString:  db "OK @"
PsnString: db "Psn@"
ParString: db "Par@"
SlpString: db "Slp@"
BrnString: db "Brn@"
FrzString: db "Frz@"
FntString: db "Fnt@"
ToxString: db "Tox@"

ListMoves: ; 50d6f
; List moves at hl, spaced every [wBuffer1] tiles.
	ld de, wListMoves_MoveIndicesBuffer
	ld b, $0
.moves_loop
	ld a, [de]
	inc de
	and a
	jr z, .check_highbyte
.notall0
	push de
	push hl
	push hl
	ld [wCurMove], a
	inc de
	inc de
	inc de
	ld a, [de]
	and MOVE_HIGH_MASK
	ld [wCurMoveHigh], a
	ld a, MOVE_NAME
	ld [wNamedObjectTypeBuffer], a
	call GetName
	ld de, wStringBuffer1
	pop hl
	push bc
	call PlaceString
	pop bc
	ld a, b
	ld [wNumMoves], a
	inc b
	pop hl
	push bc
	ld a, [wBuffer1]
	ld c, a
	ld b, 0
	add hl, bc
	pop bc
	pop de
	ld a, b
	cp NUM_MOVES
	ret z
	jr .moves_loop

.check_highbyte
	push de
	inc de
	inc de
	inc de
	ld a, [de]
	and a
	pop de
	jr z, .no_more_moves
	xor a
	jr .notall0

.no_more_moves
	ld a, b
.nonmove_loop
	push af
	ld [hl], "-"
	ld a, [wBuffer1]
	ld c, a
	ld b, 0
	add hl, bc
	pop af
	inc a
	cp NUM_MOVES
	jr nz, .nonmove_loop
	ret

CalcLevel: ; 50e1b
	ld hl, wTempMonGroup
	predef GetPartyMonGroupSpeciesAndForm
	call GetBaseData ;form is known
	ld d, 1
.next_level
	inc d
	ld a, d
	cp (MAX_LEVEL + 1) % $100
	jr z, .got_level
	call CalcExpAtLevel
	push hl
	ld hl, wTempMonExp + 2
	ldh a, [hProduct + 3]
	ld c, a
	ld a, [hld]
	sub c
	ldh a, [hProduct + 2]
	ld c, a
	ld a, [hld]
	sbc c
	ldh a, [hProduct + 1]
	ld c, a
	ld a, [hl]
	sbc c
	pop hl
	jr nc, .next_level

.got_level
	dec d
	ret

CalcExpAtLevel: ; 50e47
; (a/b)*n**3 + c*n**2 + d*n - e
	ld a, d
	cp 1
	jr nz, .UseExpFormula
; Pokémon have 0 experience at level 1
	xor a
	ldh [hProduct], a
	ldh [hProduct + 1], a
	ldh [hProduct + 2], a
	ldh [hProduct + 3], a
	ret
.UseExpFormula
	ld a, [wBaseGrowthRate]
	add a
	add a
	ld c, a
	ld b, 0
	ld hl, GrowthRates
	add hl, bc
; Cube the level
	call .LevelSquared
	ld a, d
	ldh [hMultiplier], a
	call Multiply

; Multiply by a
	ld a, [hl]
	and $f0
	swap a
	ldh [hMultiplier], a
	call Multiply
; Divide by b
	ld a, [hli]
	and $f
	ldh [hDivisor], a
	ld b, 4
	call Divide
; Push the cubic term to the stack
	ldh a, [hQuotient + 0]
	push af
	ldh a, [hQuotient + 1]
	push af
	ldh a, [hQuotient + 2]
	push af
; Square the level and multiply by the lower 7 bits of c
	call .LevelSquared
	ld a, [hl]
	and $7f
	ldh [hMultiplier], a
	call Multiply
; Push the absolute value of the quadratic term to the stack
	ldh a, [hProduct + 1]
	push af
	ldh a, [hProduct + 2]
	push af
	ldh a, [hProduct + 3]
	push af
	ld a, [hli]
	push af
; Multiply the level by d
	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	ld a, d
	ldh [hMultiplicand + 2], a
	ld a, [hli]
	ldh [hMultiplier], a
	call Multiply
; Subtract e
	ld b, [hl]
	ldh a, [hProduct + 3]
	sub b
	ldh [hMultiplicand + 2], a
	ld b, $0
	ldh a, [hProduct + 2]
	sbc b
	ldh [hMultiplicand + 1], a
	ldh a, [hProduct + 1]
	sbc b
	ldh [hMultiplicand], a
; If bit 7 of c is set, c is negative; otherwise, it's positive
	pop af
	and $80
	jr nz, .subtract
; Add c*n**2 to (d*n - e)
	pop bc
	ldh a, [hProduct + 3]
	add b
	ldh [hMultiplicand + 2], a
	pop bc
	ldh a, [hProduct + 2]
	adc b
	ldh [hMultiplicand + 1], a
	pop bc
	ldh a, [hProduct + 1]
	adc b
	ldh [hMultiplicand], a
	jr .done_quadratic

.subtract
; Subtract c*n**2 from (d*n - e)
	pop bc
	ldh a, [hProduct + 3]
	sub b
	ldh [hMultiplicand + 2], a
	pop bc
	ldh a, [hProduct + 2]
	sbc b
	ldh [hMultiplicand + 1], a
	pop bc
	ldh a, [hProduct + 1]
	sbc b
	ldh [hMultiplicand], a

.done_quadratic
; Add (a/b)*n**3 to (d*n - e +/- c*n**2)
	pop bc
	ldh a, [hProduct + 3]
	add b
	ldh [hMultiplicand + 2], a
	pop bc
	ldh a, [hProduct + 2]
	adc b
	ldh [hMultiplicand + 1], a
	pop bc
	ldh a, [hProduct + 1]
	adc b
	ldh [hMultiplicand], a
	ret

.LevelSquared: ; 50eed
	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	ld a, d
	ldh [hMultiplicand + 2], a
	ldh [hMultiplier], a
	jp Multiply

INCLUDE "data/growth_rates.asm"

_SwitchPartyMons:
	ld a, [wSwitchMon]
	dec a
	ld [wBuffer3], a
	ld b, a
	ld a, [wMenuCursorY]
	dec a
	ld [wBuffer2], a
	cp b
	ret z
	call .SwapMonAndMail
	ld a, [wBuffer3]
	call .ClearSprite
	ld a, [wBuffer2]
	; fallthrough

.ClearSprite: ; 50f34 (14:4f34)
	push af
	hlcoord 0, 1
	ld bc, 2 * SCREEN_WIDTH
	rst AddNTimes
	ld bc, 2 * SCREEN_WIDTH
	ld a, " "
	call ByteFill
	pop af
	ld hl, wSprites
	ld bc, $10
	rst AddNTimes
	ld de, $4
	ld c, $4
.gfx_loop
	ld [hl], $a0
	add hl, de
	dec c
	jr nz, .gfx_loop
	ld de, SFX_SWITCH_POKEMON
	jp WaitPlaySFX

.SwapMonAndMail: ; 50f62 (14:4f62)
	push hl
	push de
	push bc
	ld bc, wPartySpecies
	ld a, [wBuffer2]
	ld l, a
	ld h, $0
	add hl, bc
	ld d, h
	ld e, l
	ld a, [wBuffer3]
	ld l, a
	ld h, $0
	add hl, bc
	ld a, [hl]
	push af
	ld a, [de]
	ld [hl], a
	pop af
	ld [de], a
	ld a, [wBuffer2]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	push hl
	ld de, wd002
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	ld a, [wBuffer3]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	pop de
	push hl
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	pop de
	ld hl, wd002
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	ld a, [wBuffer2]
	ld hl, wPartyMonOT
	farcall SkipPlayerNames
	push hl
	call .CopyNameTowd002
	ld a, [wBuffer3]
	ld hl, wPartyMonOT
	farcall SkipPlayerNames
	pop de
	push hl
	call .CopyName
	pop de
	ld hl, wd002
	call .CopyName
	ld hl, wPartyMonNicknames
	ld a, [wBuffer2]
	farcall SkipPokemonNames
	push hl
	call .CopyNameTowd002
	ld hl, wPartyMonNicknames
	ld a, [wBuffer3]
	farcall SkipPokemonNames
	pop de
	push hl
	call .CopyName
	pop de
	ld hl, wd002
	call .CopyName
	ld hl, sPartyMail
	ld a, [wBuffer2]
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	push hl
	ld de, wd002
	ld bc, MAIL_STRUCT_LENGTH
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	rst CopyBytes
	ld hl, sPartyMail
	ld a, [wBuffer3]
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	pop de
	push hl
	ld bc, MAIL_STRUCT_LENGTH
	rst CopyBytes
	pop de
	ld hl, wd002
	ld bc, MAIL_STRUCT_LENGTH
	rst CopyBytes
	call CloseSRAM
	pop bc
	pop de
	pop hl
	ret

.CopyNameTowd002: ; 51036 (14:5036)
	ld de, wd002

.CopyName: ; 51039 (14:5039)
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	ret

INCLUDE "gfx/load_pics.asm"

InsertPokemonIntoBox: ; 51322
	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld hl, sBoxCount
	call InsertSpeciesIntoBoxOrParty
	ld a, [sBoxCount]
	dec a
	ld [wd265], a
	ld hl, sBoxMonNicknames
	ld bc, PKMN_NAME_LENGTH
	ld de, wBufferMonNick
	call InsertDataIntoBoxOrParty
	ld a, [sBoxCount]
	dec a
	ld [wd265], a
	ld hl, sBoxMonOT
	ld bc, PLAYER_NAME_LENGTH
	ld de, wBufferMonOT
	call InsertDataIntoBoxOrParty
	ld a, [sBoxCount]
	dec a
	ld [wd265], a
	ld hl, sBoxMons
	ld bc, BOXMON_STRUCT_LENGTH
	ld de, wBufferMon
	call InsertDataIntoBoxOrParty
	ld hl, wBufferMonMoves
	ld de, wTempMonMoves
	ld bc, NUM_MOVES
	rst CopyBytes
	ld hl, wBufferMonCurPP
	ld de, wTempMonCurPP
	ld bc, NUM_MOVES
	rst CopyBytes
	ld a, [wCurPartyMon]
	ld b, a
	;farcall RestorePPofDepositedPokemon
	jp CloseSRAM

InsertPokemonIntoParty: ; 5138b
	ld hl, wPartyCount
	call InsertSpeciesIntoBoxOrParty
	ld a, [wPartyCount]
	dec a
	ld [wd265], a
	ld hl, wPartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	ld de, wBufferMonNick
	call InsertDataIntoBoxOrParty
	ld a, [wPartyCount]
	dec a
	ld [wd265], a
	ld hl, wPartyMonOT
	ld bc, PLAYER_NAME_LENGTH
	ld de, wBufferMonOT
	call InsertDataIntoBoxOrParty
	ld a, [wPartyCount]
	dec a
	ld [wd265], a
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	ld de, wBufferMon
	jp InsertDataIntoBoxOrParty

InsertSpeciesIntoBoxOrParty: ; 513cb
	inc [hl]
	inc hl
	ld a, [wCurPartyMon]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wCurPartySpecies]
	ld c, a
.loop
	ld a, [hl]
	ld [hl], c
	inc hl
	inc c
	ld c, a
	jr nz, .loop
	ret

InsertDataIntoBoxOrParty: ; 513e0
	push de
	push hl
	push bc
	ld a, [wd265]
	dec a
	rst AddNTimes
	push hl
	add hl, bc
	ld d, h
	ld e, l
	pop hl
.loop
	push bc
	ld a, [wd265]
	ld b, a
	ld a, [wCurPartyMon]
	cp b
	pop bc
	jr z, .insert
	push hl
	push de
	push bc
	rst CopyBytes
	pop bc
	pop de
	pop hl
	push hl
	ld a, l
	sub c
	ld l, a
	ld a, h
	sbc b
	ld h, a
	pop de
	ld a, [wd265]
	dec a
	ld [wd265], a
	jr .loop

.insert
	pop bc
	pop hl
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl
	rst CopyBytes
	ret

SECTION "Code 14", ROMX

INCLUDE "engine/battle/abilities.asm"
INCLUDE "data/trainers/final_text.asm"
INCLUDE "engine/player_movement.asm"
INCLUDE "engine/engine_flags.asm"
INCLUDE "engine/variables.asm"
INCLUDE "data/text/battle.asm"


SECTION "Code 15", ROMX

INCLUDE "gfx/battle_anims.asm"
INCLUDE "engine/copy_tilemap_at_once.asm"

PrintAbility:
; Print ability b at hl.
	push hl
	ld l, b
	ld h, 0
	ld bc, AbilityNames
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	;hlcoord 3, 13
	jp PlaceString

BufferAbility:
; Buffer name for b into wStringBuffer1
	ld l, b
	ld h, 0
	ld bc, AbilityNames
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wStringBuffer1
.loop
	ld a, [hli]
	ld [de], a
	inc de
	cp "@"
	ret z
	jr .loop

PrintAbilityDescription:
; Print ability description for b
; we can't use PlaceString, because it would linebreak with an empty line inbetween
	push hl
	ld l, b
	ld h, 0
	ld bc, AbilityDescriptions
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	jp PlaceString

INCLUDE "data/abilities.asm"


SECTION "Code 16", ROMX

INCLUDE "engine/player_gfx.asm"
INCLUDE "engine/events/kurt.asm"
INCLUDE "engine/events/unown.asm"
INCLUDE "engine/events/buena.asm"
;INCLUDE "engine/events/movesets.asm"
INCLUDE "engine/events/item_maniacs.asm"


SECTION "Code 17", ROMX

INCLUDE "engine/timeofdaypals.asm"
INCLUDE "engine/battle_start.asm"
INCLUDE "engine/sprites.asm"
INCLUDE "engine/mon_icons.asm"
INCLUDE "engine/events/field_moves.asm"
INCLUDE "engine/events/magnet_train.asm"


SECTION "Code 18", ROMX

INCLUDE "engine/phone.asm"
INCLUDE "engine/pokegear.asm"
INCLUDE "engine/events/fish.asm"
INCLUDE "engine/slot_machine.asm"


SECTION "Code 19", ROMX

INCLUDE "engine/events_2.asm"
INCLUDE "engine/radio.asm"

SECTION "Code 20", ROMX

INCLUDE "engine/events/std_scripts.asm"
INCLUDE "engine/phone_scripts.asm"


SECTION "Code 21", ROMX

INCLUDE "engine/battle_anims/bg_effects.asm"


SECTION "Code 22", ROMX

INCLUDE "engine/card_flip.asm"
INCLUDE "engine/unown_puzzle.asm"
;INCLUDE "engine/dummy_game.asm"
INCLUDE "engine/billspc.asm"
INCLUDE "engine/fade.asm"


SECTION "Code 23", ROMX

INCLUDE "engine/battle/hidden_power.asm"
INCLUDE "engine/battle/misc.asm"
INCLUDE "engine/unowndex.asm"
INCLUDE "engine/events/magikarp.asm"
INCLUDE "engine/events/name_rater.asm"
;INCLUDE "audio/distorted_cries.asm"


SECTION "Code 24", ROMX

INCLUDE "engine/tileset_anims.asm"
INCLUDE "engine/events/npc_trade.asm"
INCLUDE "engine/events/wonder_trade.asm"
INCLUDE "engine/events/mom_phone.asm"


SECTION "Code 25", ROMX

INCLUDE "engine/misc_gfx.asm"
INCLUDE "engine/warp_connection.asm"
INCLUDE "engine/battle/used_move_text.asm"
INCLUDE "gfx/items.asm"

SECTION "Load Map Part", ROMX
; linked, do not separate
INCLUDE "engine/player_step.asm"
INCLUDE "engine/load_map_part.asm"
INCLUDE "engine/growl_roar_ded_vblank_hook.asm"
; end linked section


SECTION "Introduction", ROMX

INCLUDE "engine/options_menu.asm"
INCLUDE "engine/crystal_intro.asm"

CopyrightGFX:: ; e4000
INCBIN "gfx/splash/copyright.2bpp"


SECTION "Title Screen", ROMX

INCLUDE "engine/title.asm"


SECTION "Diploma", ROMX

INCLUDE "engine/diploma.asm"


SECTION "Collision Permissions", ROMX

INCLUDE "data/collision_permissions.asm"


SECTION "Typefaces", ROMX

INCLUDE "gfx/font.asm"

SECTION "Battle Core", ROMX

INCLUDE "engine/battle/core.asm"


SECTION "Effect Commands", ROMX

INCLUDE "engine/battle/effect_commands.asm"

SECTION "Effect Commands 2", ROMX

INCLUDE "engine/battle/effect_commands_2.asm"

SECTION "Battle Animations", ROMX

INCLUDE "engine/battle_anims/anim_commands.asm"
INCLUDE "engine/battle_anims/core.asm"
INCLUDE "data/battle_anims/objects.asm"
INCLUDE "engine/battle_anims/functions.asm"
INCLUDE "engine/battle_anims/helpers.asm"
INCLUDE "data/battle_anims/framesets.asm"
INCLUDE "data/battle_anims/oam.asm"
INCLUDE "data/battle_anims/object_gfx.asm"


SECTION "Battle Graphics", ROMX

SubstituteFrontpic: INCBIN "gfx/battle/substitute-front.2bpp.lz"
SubstituteBackpic:  INCBIN "gfx/battle/substitute-back.2bpp.lz"

GhostFrontpic:      INCBIN "gfx/battle/ghost.2bpp.lz"


SECTION "Moves", ROMX

INCLUDE "data/moves/moves.asm"


SECTION "Enemy Trainers", ROMX

INCLUDE "engine/battle/ai/items.asm"

AIScoring: ; 38591
INCLUDE "engine/battle/ai/scoring.asm"

GetTrainerClassName: ; 3952d
	ld a, c
	ld [wCurSpecies], a
	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	call GetName
	ld de, wStringBuffer1
	ret

GetOTName: ; 39550
	ld hl, wOTPlayerName
	ld a, [wLinkMode]
	and a
	jr nz, .ok

	ld a, c
	ld [wCurSpecies], a
	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	call GetName
	ld hl, wStringBuffer1

.ok
	ld bc, TRAINER_CLASS_NAME_LENGTH
	ld de, wOTClassName
	push de
	rst CopyBytes
	pop de
	ret

GetTrainerAttributes: ; 3957b
	ld a, [wTrainerClass]
	ld c, a
	call GetOTName
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerClassAttributes + TRNATTR_ITEM1
	ld bc, NUM_TRAINER_ATTRIBUTES
	rst AddNTimes
	ld de, wEnemyTrainerItem1
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, [hl]
	ld [wEnemyTrainerBaseReward], a
	ret

ComputeTrainerReward: ; 3991b (e:591b)
	ld hl, hProduct
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, [wEnemyTrainerBaseReward]
	ld [hli], a
	ld a, [wCurPartyLevel]
	ld [hl], a
	call Multiply
	ld hl, wBattleReward
	xor a
	ld [hli], a
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	ret

INCLUDE "data/trainers/attributes.asm"


SECTION "Enemy Trainer Pointers", ROMX

INCLUDE "engine/read_party.asm"
INCLUDE "data/trainers/party_pointers.asm"
INCLUDE "data/trainers/parties.asm"


SECTION "Wild Data", ROMX

INCLUDE "engine/wildmons.asm"


SECTION "Pokedex", ROMX

INCLUDE "engine/pokedex.asm"


SECTION "Evolution", ROMX

INCLUDE "engine/evolve.asm"


SECTION "Pic Animations", ROMX

INCLUDE "engine/pic_animation.asm"

SECTION "Pic Animations Data Tables", ROMX

;INCLUDE "data/pokemon/other/anim_data_table.asm"

; Pic animations are assembled in 3 parts:

; Top-level animations:
; 	frame #, duration: Frame 0 is the original pic (no change)
;	setrepeat #:       Sets the number of times to repeat
; 	dorepeat #:        Repeats from command # (starting from 0)
; 	end

; Bitmasks:
;	Layered over the pic to designate affected tiles

; Frame definitions:
;	first byte is the bitmask used for this frame
;	following bytes are tile ids mapped to each bit in the mask

; Main animations (played everywhere)
;INCLUDE "data/pokemon/other/anim_pointers.asm"
;INCLUDE "data/pokemon/other/anims.asm"


; Extra animations, appended to the main animation
; Used in the status screen (blinking, tail wags etc.)
;INCLUDE "data/pokemon/other/idle_pointers.asm"
;INCLUDE "data/pokemon/other/idles.asm"

SECTION "Kanto Pic Animations Data", ROMX

INCLUDE "data/pokemon/kanto/anim_data_table.asm"

INCLUDE "data/pokemon/kanto/anim_pointers.asm"
INCLUDE "data/pokemon/kanto/anims.asm"

INCLUDE "data/pokemon/kanto/idle_pointers.asm"
INCLUDE "data/pokemon/kanto/idles.asm"


SECTION "Johto Pic Animations Data", ROMX

INCLUDE "data/pokemon/johto/anim_data_table.asm"

INCLUDE "data/pokemon/johto/anim_pointers.asm"
INCLUDE "data/pokemon/johto/anims.asm"

INCLUDE "data/pokemon/johto/idle_pointers.asm"
INCLUDE "data/pokemon/johto/idles.asm"


SECTION "Hoenn Pic Animations Data", ROMX

INCLUDE "data/pokemon/hoenn/anim_data_table.asm"

INCLUDE "data/pokemon/hoenn/anim_pointers.asm"
INCLUDE "data/pokemon/hoenn/anims.asm"

INCLUDE "data/pokemon/hoenn/idle_pointers.asm"
INCLUDE "data/pokemon/hoenn/idles.asm"


SECTION "Sinnoh Pic Animations Data", ROMX

INCLUDE "data/pokemon/sinnoh/anim_data_table.asm"

INCLUDE "data/pokemon/sinnoh/anim_pointers.asm"
INCLUDE "data/pokemon/sinnoh/anims.asm"

INCLUDE "data/pokemon/sinnoh/idle_pointers.asm"
INCLUDE "data/pokemon/sinnoh/idles.asm"


SECTION "Unova Pic Animations Data", ROMX

INCLUDE "data/pokemon/unova/anim_data_table.asm"

INCLUDE "data/pokemon/unova/anim_pointers.asm"
INCLUDE "data/pokemon/unova/anims.asm"

INCLUDE "data/pokemon/unova/idle_pointers.asm"
INCLUDE "data/pokemon/unova/idles.asm"


SECTION "Kalos Pic Animations Data", ROMX

INCLUDE "data/pokemon/kalos/anim_data_table.asm"

INCLUDE "data/pokemon/kalos/anim_pointers.asm"
INCLUDE "data/pokemon/kalos/anims.asm"

INCLUDE "data/pokemon/kalos/idle_pointers.asm"
INCLUDE "data/pokemon/kalos/idles.asm"


SECTION "Alola Pic Animations Data", ROMX

INCLUDE "data/pokemon/alola/anim_data_table.asm"

INCLUDE "data/pokemon/alola/anim_pointers.asm"
INCLUDE "data/pokemon/alola/anims.asm"

INCLUDE "data/pokemon/alola/idle_pointers.asm"
INCLUDE "data/pokemon/alola/idles.asm"


SECTION "Galar Pic Animations Data", ROMX

INCLUDE "data/pokemon/galar/anim_data_table.asm"

INCLUDE "data/pokemon/galar/anim_pointers.asm"
INCLUDE "data/pokemon/galar/anims.asm"

INCLUDE "data/pokemon/galar/idle_pointers.asm"
INCLUDE "data/pokemon/galar/idles.asm"


SECTION "Other Pic Animations Data", ROMX

INCLUDE "data/pokemon/other/anim_data_table.asm"

INCLUDE "data/pokemon/other/anim_pointers.asm"
INCLUDE "data/pokemon/other/anims.asm"

INCLUDE "data/pokemon/other/idle_pointers.asm"
INCLUDE "data/pokemon/other/idles.asm"


SECTION "Other Pic Animations Frames", ROMX

INCLUDE "data/pokemon/other/frame_pointer_table.asm"
INCLUDE "data/pokemon/other/frame_pointers.asm"
INCLUDE "data/pokemon/other/frames.asm"


SECTION "Kanto Pic Animations Frames", ROMX

INCLUDE "data/pokemon/kanto/frame_pointer_table.asm"
INCLUDE "data/pokemon/kanto/frame_pointers.asm"
INCLUDE "data/pokemon/kanto/frames.asm"


SECTION "Johto Pic Animations Frames", ROMX

INCLUDE "data/pokemon/johto/frame_pointer_table.asm"
INCLUDE "data/pokemon/johto/frames.asm"
INCLUDE "data/pokemon/johto/frame_pointers.asm"


SECTION "Hoenn Pic Animations Frames", ROMX

INCLUDE "data/pokemon/hoenn/frame_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/frames.asm"
INCLUDE "data/pokemon/hoenn/frame_pointers.asm"


SECTION "Sinnoh Pic Animations Frames", ROMX

INCLUDE "data/pokemon/sinnoh/frame_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/frames.asm"
INCLUDE "data/pokemon/sinnoh/frame_pointers.asm"


SECTION "Unova Pic Animations Frames", ROMX

INCLUDE "data/pokemon/unova/frame_pointer_table.asm"
INCLUDE "data/pokemon/unova/frames.asm"
INCLUDE "data/pokemon/unova/frame_pointers.asm"


SECTION "Kalos Pic Animations Frames", ROMX

INCLUDE "data/pokemon/kalos/frame_pointer_table.asm"
INCLUDE "data/pokemon/kalos/frames.asm"
INCLUDE "data/pokemon/kalos/frame_pointers.asm"


SECTION "Alola Pic Animations Frames", ROMX

INCLUDE "data/pokemon/alola/frame_pointer_table.asm"
INCLUDE "data/pokemon/alola/frames.asm"
INCLUDE "data/pokemon/alola/frame_pointers.asm"


SECTION "Galar Pic Animations Frames", ROMX

INCLUDE "data/pokemon/galar/frame_pointer_table.asm"
INCLUDE "data/pokemon/galar/frames.asm"
INCLUDE "data/pokemon/galar/frame_pointers.asm"


SECTION "Other Animation Bitmasks", ROMX

; Bitmasks
INCLUDE "data/pokemon/other/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/other/bitmask_pointers.asm"
INCLUDE "data/pokemon/other/bitmasks.asm"


SECTION "Kanto Animation Bitmasks", ROMX

INCLUDE "data/pokemon/kanto/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/kanto/bitmask_pointers.asm"
INCLUDE "data/pokemon/kanto/bitmasks.asm"


SECTION "Johto Animation Bitmasks", ROMX

INCLUDE "data/pokemon/johto/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/johto/bitmask_pointers.asm"
INCLUDE "data/pokemon/johto/bitmasks.asm"


SECTION "Hoenn Animation Bitmasks", ROMX

INCLUDE "data/pokemon/hoenn/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/bitmask_pointers.asm"
INCLUDE "data/pokemon/hoenn/bitmasks.asm"


SECTION "Sinnoh Animation Bitmasks", ROMX

INCLUDE "data/pokemon/sinnoh/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/bitmask_pointers.asm"
INCLUDE "data/pokemon/sinnoh/bitmasks.asm"


SECTION "Unova Animation Bitmasks", ROMX

INCLUDE "data/pokemon/unova/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/unova/bitmask_pointers.asm"
INCLUDE "data/pokemon/unova/bitmasks.asm"


SECTION "Kalos Animation Bitmasks", ROMX

INCLUDE "data/pokemon/kalos/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/kalos/bitmask_pointers.asm"
INCLUDE "data/pokemon/kalos/bitmasks.asm"


SECTION "Alola Animation Bitmasks", ROMX

INCLUDE "data/pokemon/alola/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/alola/bitmask_pointers.asm"
INCLUDE "data/pokemon/alola/bitmasks.asm"


SECTION "Galar Animation Bitmasks", ROMX

INCLUDE "data/pokemon/galar/bitmask_pointer_table.asm"
INCLUDE "data/pokemon/galar/bitmask_pointers.asm"
INCLUDE "data/pokemon/galar/bitmasks.asm"

SECTION "Standard Text", ROMX

INCLUDE "data/text/std_text.asm"


SECTION "Phone Scripts", ROMX

INCLUDE "engine/more_phone_scripts.asm"
INCLUDE "engine/buena_phone_scripts.asm"


SECTION "Phone Text 1", ROMX

INCLUDE "data/phone/text/anthony_overworld.asm"
INCLUDE "data/phone/text/todd_overworld.asm"
INCLUDE "data/phone/text/gina_overworld.asm"
INCLUDE "data/phone/text/irwin_overworld.asm"
INCLUDE "data/phone/text/arnie_overworld.asm"
INCLUDE "data/phone/text/alan_overworld.asm"
INCLUDE "data/phone/text/dana_overworld.asm"
INCLUDE "data/phone/text/chad_overworld.asm"
INCLUDE "data/phone/text/derek_overworld.asm"
INCLUDE "data/phone/text/tully_overworld.asm"
INCLUDE "data/phone/text/brent_overworld.asm"
INCLUDE "data/phone/text/tiffany_overworld.asm"
INCLUDE "data/phone/text/vance_overworld.asm"
INCLUDE "data/phone/text/wilton_overworld.asm"
INCLUDE "data/phone/text/kenji_overworld.asm"
INCLUDE "data/phone/text/parry_overworld.asm"
INCLUDE "data/phone/text/erin_overworld.asm"


SECTION "Phone Text 2", ROMX

INCLUDE "data/phone/text/jack_overworld.asm"
INCLUDE "data/phone/text/beverly_overworld.asm"
INCLUDE "data/phone/text/huey_overworld.asm"
INCLUDE "data/phone/text/gaven_overworld.asm"
INCLUDE "data/phone/text/beth_overworld.asm"
INCLUDE "data/phone/text/jose_overworld.asm"
INCLUDE "data/phone/text/reena_overworld.asm"
INCLUDE "data/phone/text/joey_overworld.asm"
INCLUDE "data/phone/text/wade_overworld.asm"
INCLUDE "data/phone/text/ralph_overworld.asm"


SECTION "Phone Text 3", ROMX

INCLUDE "data/phone/text/mom.asm"
INCLUDE "data/phone/text/bill.asm"
INCLUDE "data/phone/text/elm.asm"
INCLUDE "data/phone/text/trainers1.asm"
INCLUDE "data/phone/text/liz_overworld.asm"


SECTION "Phone Text 4", ROMX

INCLUDE "data/phone/text/extra.asm"
INCLUDE "data/phone/text/lyra.asm"


SECTION "Phone Text 5", ROMX

INCLUDE "data/phone/text/extra2.asm"


SECTION "Item Text", ROMX

INCLUDE "data/items/names.asm"

PrintKeyItemDescription:
	ld hl, KeyItemDescriptions
	ld a, [wCurKeyItem]
	jr PrintDescription
PrintItemDescription: ; 0x1c8955
; Print the description for item [wCurSpecies] at de.
	ld hl, ItemDescriptions
	ld a, [wCurSpecies]
PrintDescription:
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	push de
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop hl
	call InitVariableWidthText
	jp PlaceString
; 0x1c8987

PrintTMHMDescription:
; Print the description for TM/HM [wCurSpecies] at de.

	ld a, [wCurSpecies]
	inc a
	ld [wCurTMHM], a
	ld [wCurTMHMBuffer], a
	push de
	predef GetTMHMMove
	pop hl
	ld a, [wNamedObjectIndexBuffer]
	ld [wCurMove], a
	ld a, [wNamedObjectIndexBuffer+1]
	ld [wCurMove+1], a
	predef PrintMoveDesc
	ret

INCLUDE "data/items/descriptions.asm"
INCLUDE "data/items/apricorn_names.asm"


SECTION "Move and Landmark Text", ROMX

INCLUDE "data/moves/names.asm"

INCLUDE "engine/landmarks.asm"


SECTION "Battle Tower Text", ROMX


SECTION "Crystal Data", ROMX


SECTION "color", ROMX

INCLUDE "engine/color.asm"


SECTION "wild stuff", ROMX

;INCLUDE "data/wild/unlocked_unowns.asm"
INCLUDE "data/wild/treemons_asleep.asm"


SECTION "Code 26", ROMX

INCLUDE "engine/events/portrait.asm"

GetCenteredObjectStructParam::
	push hl
	call GetCenteredObjectStructParamAddress
	ld a, [hl]
	pop hl
	ret

GetCenteredObjectStructParamAddress::
	push bc
	push af
	ld hl, wObjectStructs
	ld b, 0
	ld c, a
	add hl, bc

	ld bc, OBJECT_STRUCT_LENGTH
	ld a, [wCenteredObject]
	rst AddNTimes
	pop af
	pop bc
	ret

AutomaticRainWhenOvercast::
	call GetOvercastIndex
	and a
	ret z
	ld a, WEATHER_RAIN
	ld [wWeather], a
	ld a, 255
	ld [wWeatherCount], a
	ld de, RAIN_DANCE
	farcall Call_PlayBattleAnim
	ld hl, DownpourText
	call StdBattleTextBox
	jp EmptyBattleTextBox

CheckUniqueWildMove:: ; this will have to be updated to account for form as well as moves when that happens
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	ld c, a
	ld hl, UniqueWildMoves
.loop
	ld a, [hli] ; landmark
	cp -1
	ret z
	cp c
	jr nz, .inc2andloop
	ld a, [hli] ; species
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr nz, .inc1andloop
	ld a, [hli] ; move
	ld b, a
	cp FLY
	jr nz, .ChanceToTeach
	ld a, [wPlayerState]
	cp PLAYER_SURF
	jr z, .SurfingPikachu
	cp PLAYER_SURF_PIKA
	jr nz, .ChanceToTeach
.SurfingPikachu
	ld a, SURF
	ld b, a
	jr .TeachMove
.ChanceToTeach
	call Random
	cp 50 percent + 1
	ret nc
.TeachMove
	ld hl, wEnemyMonMoves + 1 ; second move
	ld a, b
	ld [hl], a
	ret

.inc2andloop
	inc hl
.inc1andloop
	inc hl
	jr .loop

INCLUDE "data/pokemon/unique_wild_moves.asm"


SetSeenAndCaughtMon:: ; 3380
	ld c, a
	push af ;1
	call GetRelevantCaughtPointers

	ldh a, [rSVBK]
	push af ; 2
	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a

	ld b, SET_FLAG
	call PokedexFlagAction

	pop af ; 1
	ldh [rSVBK], a
	pop af ;0
; 338b
SetSeenMon:: ; 338b
	ld c, a
	call GetRelevantSeenPointers

	ldh a, [rSVBK]
	push af ; 1
	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a

	ld b, SET_FLAG
	call PokedexFlagAction

	pop af ; 0
	ldh [rSVBK], a
	ret
; 3393

CheckCaughtMon:: ; 3393
	ld c, a
	call GetRelevantCaughtPointers
	ld b, CHECK_FLAG
	jr PokedexFlagAction
; 339b

CheckSeenMon:: ; 339b
	ld c, a
	call GetRelevantSeenPointers
	ld b, CHECK_FLAG
	; fallthrough
; 33a1

PokedexFlagAction:: ; 33a1
	ld d, BANK(wPokedexCaughtSeen)
	predef FlagPredef
	ld a, c
	and a
	ret
; 33ab

GetRelevantSeenPointers::
	ld hl, RegionalSeenTable
	jr GetRelevantSeenCaughtPointers

GetRelevantCaughtPointers::
	ld hl, RegionalCaughtTable

GetRelevantSeenCaughtPointers::
	push bc
	ld a, [wCurGroup]
	ld de, 3
	call IsInArray
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc
	ret

INCLUDE "data/pokemon/regional_seen_caught_tables.asm"

GetRelevantBaseData::
	;accounts for group, species and form, returns address in hl
	ld a, [wCurGroup]
	ld hl, RegionalBaseDataTable
	ld bc, 3
	rst AddNTimes
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	;getting the variant base data table for said region and now checking it
	ld a, [wCurSpecies]
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, d
	call GetFarHalfword
	ld a, [wCurForm]
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, d
	jp GetFarHalfword

INCLUDE "data/pokemon/variant_base_data_table.asm"

GetTMHMName:: ; 3487
; Get TM/HM name by item id wNamedObjectIndexBuffer.

	push hl
	push de
	push bc
	ld a, [wNamedObjectIndexBuffer]
	push af

; TM/HM prefix
	cp HM01
	push af
	jr c, .TM

	ld hl, .HMText
	ld bc, .HMTextEnd - .HMText
	jr .asm_34a1

.TM:
	ld hl, .TMText
	ld bc, .TMTextEnd - .TMText

.asm_34a1
	ld de, wStringBuffer1
	rst CopyBytes

; TM/HM number
	ld a, [wNamedObjectIndexBuffer]
	ld c, a

; HM numbers start from 51, not 1
	pop af
	ld a, c
	jr c, .asm_34b9
	sub NUM_TMS
.asm_34b9
	inc a

; Divide and mod by 10 to get the top and bottom digits respectively
	ld b, "0"
.mod10
	sub 10
	jr c, .asm_34c2
	inc b
	jr .mod10
.asm_34c2
	add 10

	push af
	ld a, b
	ld [de], a
	inc de
	pop af

	ld b, "0"
	add b
	ld [de], a

; End the string
	inc de
	ld a, "@"
	ld [de], a

	pop af
	ld [wNamedObjectIndexBuffer], a
	pop bc
	pop de
	pop hl
	ld de, wStringBuffer1
	ret

.TMText:
	db "TM"
.TMTextEnd:
	db "@"

.HMText:
	db "HM"
.HMTextEnd:
	db "@"

IsAPokemon::
; Return carry if species a is not a Pokemon.
	and a
	jp z, .not_a_pokemon
	push hl
	push bc
	push de
	push af
	call GetMaxNumPokemonForGroup
	pop de
	jr nc, .not_a_pokemon_2
	cp d
	jr c, .not_a_pokemon_2
	ld a, d
	and a
	pop de
	pop bc
	pop hl
	ret

.not_a_pokemon_2
	pop de
	pop bc
	pop hl
.not_a_pokemon
	scf
	ret

GetMaxNumPokemonForGroup::
	ld a, [wCurGroup]
	ld hl, RegionalMaxPokemonTable
	ld de, 2
	call IsInArray
	inc hl
	ld a, [hl]
	ret

RegionalMaxPokemonTable:
	db GROUP_GENERATION_ONE, NUM_KANTO_POKEMON
	db GROUP_GENERATION_TWO, NUM_JOHTO_POKEMON
	db GROUP_GENERATION_THREE, NUM_HOENN_POKEMON
	db GROUP_GENERATION_FOUR, NUM_SINNOH_POKEMON
	db GROUP_GENERATION_FIVE, NUM_UNOVA_POKEMON
	db GROUP_GENERATION_SIX, NUM_KALOS_POKEMON
	db GROUP_GENERATION_SEVEN, NUM_ALOLA_POKEMON
	db GROUP_GENERATION_EIGHT, NUM_GALAR_POKEMON
	db -1, 0

InitScrollingMenu:: ; 352f
	ld a, [wMenuBorderTopCoord]
	dec a
	ld b, a
	ld a, [wMenuBorderBottomCoord]
	sub b
	ld d, a
	ld a, [wMenuBorderLeftCoord]
	dec a
	ld c, a
	ld a, [wMenuBorderRightCoord]
	sub c
	ld e, a
	push de
	call Coord2Tile
	pop bc
	jp TextBox

GetLeadAbility::
; Returns ability of lead mon unless it's an Egg. Used for field
; abilities
	ld a, [wPartyMon1IsEgg]
	and IS_EGG_MASK
	xor IS_EGG_MASK
	ret z
	ld a, [wPartyMon1Species] ;merely making sure that party mon 1 is a pokemon I guess
	inc a
	ret z
	dec a
	ret z
	push bc
	push de
	push hl
	ld hl, wPartyMon1Group
	predef PokemonToGroupSpeciesAndForm
	;ld a, [wCurSpecies]
	;ld c, a
	ld a, [wPartyMon1Ability]
	ld b, a
	call GetAbility
	ld a, b
	pop hl
	pop de
	pop bc
	ret

PrintLevel:: ; 382d
; Print wTempMonLevel at hl

	ld a, [wTempMonLevel]
	ld [hl], "<LV>"
	inc hl

; How many digits?
	ld c, 2
	cp 100
	jp c, Print8BitNumRightAlign

; 3-digit numbers overwrite the :L.
	dec hl
	inc c
	; fallthrough

Print8BitNumRightAlign:: ; 3842
	ld [wd265], a
	ld de, wd265
	ld b, PRINTNUM_LEFTALIGN | 1
	predef_jump PrintNum

GetCharacterWidth::
	push hl
	push bc
	cp "<COLON>" +1
	jr nc, .other
	sub "A"
	jr c, .space
	ld b, 0
	ld c, a
	ld hl, CharacterWidths
	add hl, bc
	ld e, [hl]
	pop bc
	pop hl
	ret

.space
	ld e, 3 ;shortcut
	pop bc
	pop hl
	ret

.other
	ld e, 8 ;shortcut
	pop bc
	pop hl
	ret

CharacterWidths:
	db 6 ;A
	db 6 ;B
	db 6 ;C
	db 6 ;D
	db 5 ;E
	db 5 ;F
	db 6 ;G
	db 6 ;H
	db 4 ;I
	db 6 ;J
	db 6 ;K
	db 5 ;L
	db 6 ;M
	db 6 ;N
	db 6 ;O
	db 6 ;P
	db 6 ;Q
	db 6 ;R
	db 6 ;S
	db 6 ;T
	db 6 ;U
	db 6 ;V
	db 6 ;W
	db 6 ;X
	db 6 ;Y
	db 6 ;Z
	db 4 ;(
	db 4 ;)
	db 2 ;.
	db 3 ;,
	db 6 ;?
	db 4 ;!
	db 5 ;a
	db 5 ;b
	db 5 ;c
	db 5 ;d
	db 5 ;e
	db 5 ;f
	db 5 ;g
	db 5 ;h
	db 3 ;i
	db 3 ;j
	db 5 ;k
	db 3 ;l
	db 6 ;m
	db 5 ;n
	db 5 ;o
	db 5 ;p
	db 5 ;q
	db 5 ;r
	db 5 ;s
	db 4 ;t
	db 5 ;u
	db 6 ;v
	db 6 ;w
	db 6 ;x
	db 5 ;y
	db 4 ;z
	db 6 ;""
	db 6
	db 5 ;-
	db 2 ;:
	db 0
	db 0
	db 3 ;
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 5 ;é
	db 8
	db 8
	db 8
	db 8
	db 8
	db 0
	db 0
	db 8
	db 8
	db 8
	db 8
	db 8
	db 8
	db 8
	db 0
	db 0
	db 0
	db 6
	db 6
	db 8
	db 6
	db 6
	db 7
	db 6 ;0
	db 6 ;1
	db 6 ;2
	db 6 ;3
	db 6 ;4
	db 6 ;5
	db 6 ;6
	db 6 ;7
	db 6 ;8
	db 6 ;9
	db 6 ;$
	db 6 ;x
	db 8
	db 5 ;/
	db 6 ;+
	db 3 ;:



PrintLetterDelay:: ; 313d
; Wait before printing the next letter.

; The text speed setting in wOptions1 is actually a frame count:
; 	fast: 1 frame
; 	mid:  3 frames
; 	slow: 5 frames

; wTextBoxFlags[!0] and A or B override text speed with a one-frame delay.
; wOptions1[4] and wTextBoxFlags[!1] disable the delay.

	ld a, [wTextBoxFlags]
	bit TEXT_DELAY, a
	ret z
	bit NO_FORCED_FAST_SCROLL, a
	jr z, .forceFastScroll

	ld a, [wOptions1]
	bit NO_TEXT_SCROLL, a
	ret nz
	and %11
	ret z
	ld a, $1
	ldh [hBGMapHalf], a
.forceFastScroll
	push hl
	push de
	push bc
; force fast scroll?
	ld a, [wTextBoxFlags]
	bit NO_FORCED_FAST_SCROLL, a
	ld a, 2
	jr z, .updateDelay
; text speed
	ld a, [wOptions1]
	and %11
	rlca
.updateDelay
	dec a
	ld [wTextDelayFrames], a
.textDelayLoop
	ld a, [wTextDelayFrames]
	and a
	jr z, .done
	call DelayFrame
	call GetJoypad
; Finish execution if A or B is pressed
	ldh a, [hJoyDown]
	and A_BUTTON | B_BUTTON
	jr z, .textDelayLoop
.done
	pop bc
	pop de
	pop hl
	ret
; 318c

DisplayLinkRecord: ; 3f836
	ld a, BANK(sLinkBattleStats)
	call GetSRAMBank

	call ReadAndPrintLinkBattleRecord

	call CloseSRAM
	hlcoord 0, 0, wAttrMap
	xor a
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call ByteFill
	call ApplyAttrAndTilemapInVBlank
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call SetPalettes
	ld c, 8
	call DelayFrames
	jp WaitPressAorB_BlinkCursor
; 3f85f


ReadAndPrintLinkBattleRecord: ; 3f85f
	call ClearTileMap
	call ClearSprites
	call .PrintBattleRecord
	hlcoord 0, 8
	ld b, 5
	ld de, sLinkBattleRecord + 2
.loop
	push bc
	push hl
	push de
	ld a, [de]
	and a
	jr z, .PrintFormatString
	ld a, [wSavedAtLeastOnce]
	and a
	jr z, .PrintFormatString
	push hl
	push hl
	ld h, d
	ld l, e
	ld de, wd002
	ld bc, PLAYER_NAME_LENGTH - 1
	rst CopyBytes
	ld a, "@"
	ld [de], a
	inc de
	ld bc, 6
	rst CopyBytes
	ld de, wd002
	pop hl
	call PlaceString
	pop hl
	ld de, 26
	add hl, de
	push hl
	ld de, wd002 + 11 ; win
	lb bc, 2, 4
	predef PrintNum
	pop hl
	ld de, 5
	add hl, de
	push hl
	ld de, wd002 + 13 ; lose
	lb bc, 2, 4
	predef PrintNum
	pop hl
	ld de, 5
	add hl, de
	ld de, wd002 + 15 ; draw
	lb bc, 2, 4
	predef PrintNum
	jr .next

.PrintFormatString:
	ld de, .Format
	call PlaceString
.next
	pop hl
	ld bc, 18
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld bc, 2 * SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrintBattleRecord:
	hlcoord 1, 0
	ld de, .Record
	call PlaceString

	hlcoord 0, 6
	ld de, .Result
	call PlaceString

	hlcoord 0, 2
	ld de, .Total
	call PlaceString

	hlcoord 6, 4
	ld de, sLinkBattleWins
	call .PrintZerosIfNoSaveFileExists
	ret c

	lb bc, 2, 4
	predef PrintNum

	hlcoord 11, 4
	ld de, sLinkBattleLosses
	call .PrintZerosIfNoSaveFileExists

	lb bc, 2, 4
	predef PrintNum

	hlcoord 16, 4
	ld de, sLinkBattleDraws
	call .PrintZerosIfNoSaveFileExists

	lb bc, 2, 4
	predef_jump PrintNum

.PrintZerosIfNoSaveFileExists:
	ld a, [wSavedAtLeastOnce]
	and a
	ret nz
	ld de, .Scores
	call PlaceString
	scf
	ret
; 3f938

.Scores:
	db "   0    0    0@"
; 3f947

.Format: ; 3f947
	db "  ---  <LNBRK>"
	db "         -    -    -@"
.Record: ; 3f964
	db "<PLAYER>'s Record@"
.Result: ; 3f96e
	db "Result Win Lose Draw@"
.Total: ; 3f983
	db "Total  Win Lose Draw@"
; 3f998

AddLastBattleToLinkRecord: ; 3fa42
	ld hl, wOTPlayerID
	ld de, wStringBuffer1
	ld bc, 2
	rst CopyBytes
	ld hl, wOTPlayerName
	ld bc, PLAYER_NAME_LENGTH - 1
	rst CopyBytes
	ld hl, sLinkBattleResults
	call .StoreResult
	ld hl, sLinkBattleRecord
	ld d, 5
.loop
	push hl
	inc hl
	inc hl
	ld a, [hl]
	dec hl
	dec hl
	and a
	jr z, .copy
	push de
	ld bc, 12
	ld de, wStringBuffer1
	call CompareLong
	pop de
	pop hl
	jr c, .done
	ld bc, 18
	add hl, bc
	dec d
	jr nz, .loop
	ld bc, -18
	add hl, bc
	push hl

.copy
	ld d, h
	ld e, l
	ld hl, wStringBuffer1
	ld bc, 12
	rst CopyBytes
	ld b, 6
	xor a
.loop2
	ld [de], a
	inc de
	dec b
	jr nz, .loop2
	pop hl

.done
	call .StoreResult
	jp .FindOpponentAndAppendRecord
; 3faa0

.StoreResult: ; 3faa0
	ld a, [wBattleResult]
	and $f
	cp $1
	ld bc, sLinkBattleWins + 1 - sLinkBattleResults
	jr c, .okay
	ld bc, sLinkBattleLosses + 1 - sLinkBattleResults
	jr z, .okay
	ld bc, sLinkBattleDraws + 1 - sLinkBattleResults
.okay
	add hl, bc
	call .CheckOverflow
	ret nc
	inc [hl]
	ret nz
	dec hl
	inc [hl]
	ret
; 3fabe

.CheckOverflow: ; 3fabe
	dec hl
	ld a, [hl]
	inc hl
	cp 9999 / $100
	ret c
	ld a, [hl]
	cp 9999 % $100
	ret
; 3fac8

.FindOpponentAndAppendRecord: ; 3fac8
	ld b, 5
	ld hl, sLinkBattleRecord + 17
	ld de, wd002
.loop3
	push bc
	push de
	push hl
	call .LoadPointer
	pop hl
	ld a, e
	pop de
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a
	inc de
	ld bc, 18
	add hl, bc
	pop bc
	dec b
	jr nz, .loop3
	lb bc, $0, $1
.loop4
	ld a, b
	add b
	add b
	ld e, a
	ld d, $0
	ld hl, wd002
	add hl, de
	push hl
	ld a, c
	add c
	add c
	ld e, a
	ld d, $0
	ld hl, wd002
	add hl, de
	ld d, h
	ld e, l
	pop hl
	push bc
	ld c, 3
	call StringCmp
	pop bc
	jr z, .equal
	jr nc, .done2

.equal
	inc c
	ld a, c
	cp $5
	jr nz, .loop4
	inc b
	ld c, b
	inc c
	ld a, b
	cp $4
	jr nz, .loop4
	ret

.done2
	push bc
	ld a, b
	ld bc, 18
	ld hl, sLinkBattleRecord
	rst AddNTimes
	push hl
	ld de, wd002
	ld bc, 18
	rst CopyBytes
	pop hl
	pop bc
	push hl
	ld a, c
	ld bc, 18
	ld hl, sLinkBattleRecord
	rst AddNTimes
	pop de
	push hl
	ld bc, 18
	rst CopyBytes
	ld hl, wd002
	ld bc, 18
	pop de
	rst CopyBytes
	ret
; 3fb54

.LoadPointer: ; 3fb54
	ld e, $0
	ld a, [hld]
	ld c, a
	ld a, [hld]
	ld b, a
	ld a, [hld]
	add c
	ld c, a
	ld a, [hld]
	adc b
	ld b, a
	jr nc, .okay2
	inc e

.okay2
	ld a, [hld]
	add c
	ld c, a
	ld a, [hl]
	adc b
	ld b, a
	ret nc
	inc e
	ret
; 3fb6c

CompareLong:: ; 31e4
; Compare bc bytes at de and hl.
; Return carry if they all match.

	ld a, [de]
	cp [hl]
	jr nz, .Diff

	inc de
	inc hl
	dec bc

	ld a, b
	or c
	jr nz, CompareLong

	scf
	ret

.Diff:
	and a
	ret

if DEF(DEBUG)
INCLUDE "engine/mon_editor.asm"
endc

SECTION "Move Data", ROMX

INCLUDE "data/battle/move_properties.asm"


SECTION "Follower Scripts", ROMX

INCLUDE "engine/events/follower_scripts.asm"


SECTION "Kanto Base Data 1", ROMX

evs: MACRO
	db (\1 << 6) | (\2 << 4) | (\3 << 2) | \4
	db (\5 << 6) | (\6 << 4)
ENDM

tmhm: MACRO
tms1_24 = 0
tms25_48 = 0
tms49_72 = 0
tms73_96 = 0
tms97_112 = 0
rept _NARG
if def(\1_TMNUM)
	if \1_TMNUM < 25
tms1_24 = tms1_24 | (1 << ((\1_TMNUM) - 1))
	elif \1_TMNUM < 49
tms25_48 = tms25_48 | (1 << ((\1_TMNUM) - 1 - 24))
	elif \1_TMNUM < 73
tms49_72 = tms49_72 | (1 << ((\1_TMNUM) - 1 - 48))
	elif \1_TMNUM < 97
tms73_96 = tms73_96 | (1 << ((\1_TMNUM) - 1 - 72))
	elif \1_TMNUM < 113
tms97_112 = tms97_112 | (1 << ((\1_TMNUM) - 1 - 96))
	else
		fail "\1 overflows base data"
	endc
else
	fail "\1 is not a TM, HM, or move tutor move"
endc
	shift
endr

rept 3
	db tms1_24 & $ff
tms1_24 = tms1_24 >> 8
endr
rept 3
	db tms25_48 & $ff
tms25_48 = tms25_48 >> 8
endr
rept 3
	db tms49_72 & $ff
tms49_72 = tms49_72 >> 8
endr
rept 3
	db tms73_96 & $ff
tms73_96 = tms73_96 >> 8
endr
rept 2
	db tms97_112 & $ff
tms97_112 = tms97_112 >> 8
endr
ENDM

INCLUDE "data/pokemon/kanto/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/kanto/base_stat_pointers.asm"
INCLUDE "data/pokemon/kanto/base_stats.asm"

INCLUDE "data/pokemon/kanto/name_pointer_table.asm"
INCLUDE "data/pokemon/kanto/name_pointers.asm"
INCLUDE "data/pokemon/kanto/names.asm"

INCLUDE "data/pokemon/kanto/palette_pointer_table.asm"
INCLUDE "data/pokemon/kanto/palette_pointers.asm"
INCLUDE "data/pokemon/kanto/palettes.asm"

SECTION "Kanto Base Data 2", ROMX

INCLUDE "data/pokemon/kanto/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/kanto/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/kanto/overworld_palettes.asm"

SECTION "Kanto Base Data 3", ROMX

INCLUDE "data/pokemon/kanto/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/kanto/dex_entry_pointers.asm"


SECTION "Johto Base Data 1", ROMX

INCLUDE "data/pokemon/johto/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/johto/base_stat_pointers.asm"
INCLUDE "data/pokemon/johto/base_stats.asm"

INCLUDE "data/pokemon/johto/name_pointer_table.asm"
INCLUDE "data/pokemon/johto/name_pointers.asm"
INCLUDE "data/pokemon/johto/names.asm"

INCLUDE "data/pokemon/johto/palette_pointer_table.asm"
INCLUDE "data/pokemon/johto/palette_pointers.asm"
INCLUDE "data/pokemon/johto/palettes.asm"

SECTION "Johto Base Data 2", ROMX

INCLUDE "data/pokemon/johto/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/johto/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/johto/overworld_palettes.asm"

SECTION "Johto Base Data 3", ROMX

INCLUDE "data/pokemon/johto/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/johto/dex_entry_pointers.asm"


SECTION "Hoenn Base Data 1", ROMX

INCLUDE "data/pokemon/hoenn/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/base_stat_pointers.asm"
INCLUDE "data/pokemon/hoenn/base_stats.asm"

INCLUDE "data/pokemon/hoenn/name_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/name_pointers.asm"
INCLUDE "data/pokemon/hoenn/names.asm"

INCLUDE "data/pokemon/hoenn/palette_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/palette_pointers.asm"
INCLUDE "data/pokemon/hoenn/palettes.asm"

SECTION "Hoenn Base Data 2", ROMX

INCLUDE "data/pokemon/hoenn/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/hoenn/overworld_palettes.asm"

SECTION "Hoenn Base Data 3", ROMX

INCLUDE "data/pokemon/hoenn/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/dex_entry_pointers.asm"


SECTION "Sinnoh Base Data 1", ROMX

INCLUDE "data/pokemon/sinnoh/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/base_stat_pointers.asm"
INCLUDE "data/pokemon/sinnoh/base_stats.asm"

INCLUDE "data/pokemon/sinnoh/name_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/name_pointers.asm"
INCLUDE "data/pokemon/sinnoh/names.asm"

INCLUDE "data/pokemon/sinnoh/palette_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/palette_pointers.asm"
INCLUDE "data/pokemon/sinnoh/palettes.asm"

SECTION "Sinnoh Base Data 2", ROMX

INCLUDE "data/pokemon/sinnoh/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/sinnoh/overworld_palettes.asm"

SECTION "Sinnoh Base Data 3", ROMX

INCLUDE "data/pokemon/sinnoh/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/dex_entry_pointers.asm"


SECTION "Unova Base Data 1", ROMX

INCLUDE "data/pokemon/unova/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/unova/base_stat_pointers.asm"
INCLUDE "data/pokemon/unova/base_stats.asm"

INCLUDE "data/pokemon/unova/name_pointer_table.asm"
INCLUDE "data/pokemon/unova/name_pointers.asm"
INCLUDE "data/pokemon/unova/names.asm"

INCLUDE "data/pokemon/unova/palette_pointer_table.asm"
INCLUDE "data/pokemon/unova/palette_pointers.asm"
INCLUDE "data/pokemon/unova/palettes.asm"

SECTION "Unova Base Data 2", ROMX

INCLUDE "data/pokemon/unova/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/unova/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/unova/overworld_palettes.asm"

SECTION "Unova Base Data 3", ROMX

INCLUDE "data/pokemon/unova/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/unova/dex_entry_pointers.asm"


SECTION "Kalos Base Data 1", ROMX

INCLUDE "data/pokemon/kalos/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/kalos/base_stat_pointers.asm"
INCLUDE "data/pokemon/kalos/base_stats.asm"

INCLUDE "data/pokemon/kalos/name_pointer_table.asm"
INCLUDE "data/pokemon/kalos/name_pointers.asm"
INCLUDE "data/pokemon/kalos/names.asm"

INCLUDE "data/pokemon/kalos/palette_pointer_table.asm"
INCLUDE "data/pokemon/kalos/palette_pointers.asm"
INCLUDE "data/pokemon/kalos/palettes.asm"

SECTION "Kalos Base Data 2", ROMX

INCLUDE "data/pokemon/kalos/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/kalos/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/kalos/overworld_palettes.asm"

SECTION "Kalos Base Data 3", ROMX

INCLUDE "data/pokemon/kalos/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/kalos/dex_entry_pointers.asm"


SECTION "Alola Base Data 1", ROMX

INCLUDE "data/pokemon/alola/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/alola/base_stat_pointers.asm"
INCLUDE "data/pokemon/alola/base_stats.asm"

INCLUDE "data/pokemon/alola/name_pointer_table.asm"
INCLUDE "data/pokemon/alola/name_pointers.asm"
INCLUDE "data/pokemon/alola/names.asm"

INCLUDE "data/pokemon/alola/palette_pointer_table.asm"
INCLUDE "data/pokemon/alola/palette_pointers.asm"
INCLUDE "data/pokemon/alola/palettes.asm"

SECTION "Alola Base Data 2", ROMX

INCLUDE "data/pokemon/alola/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/alola/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/alola/overworld_palettes.asm"

SECTION "Alola Base Data 3", ROMX

INCLUDE "data/pokemon/alola/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/alola/dex_entry_pointers.asm"


SECTION "Galar Base Data 1", ROMX

INCLUDE "data/pokemon/galar/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/galar/base_stat_pointers.asm"
INCLUDE "data/pokemon/galar/base_stats.asm"

INCLUDE "data/pokemon/galar/name_pointer_table.asm"
INCLUDE "data/pokemon/galar/name_pointers.asm"
INCLUDE "data/pokemon/galar/names.asm"

INCLUDE "data/pokemon/galar/palette_pointer_table.asm"
INCLUDE "data/pokemon/galar/palette_pointers.asm"
INCLUDE "data/pokemon/galar/palettes.asm"

SECTION "Galar Base Data 2", ROMX

INCLUDE "data/pokemon/galar/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/galar/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/galar/overworld_palettes.asm"

SECTION "Galar Base Data 3", ROMX

INCLUDE "data/pokemon/galar/dex_entry_pointer_table.asm"
INCLUDE "data/pokemon/galar/dex_entry_pointers.asm"


SECTION "Other Base Data 1", ROMX

INCLUDE "data/pokemon/other/base_stat_pointer_table.asm"
INCLUDE "data/pokemon/other/base_stat_pointers.asm"
INCLUDE "data/pokemon/other/base_stats.asm"

INCLUDE "data/pokemon/other/name_pointer_table.asm"
INCLUDE "data/pokemon/other/name_pointers.asm"
INCLUDE "data/pokemon/other/names.asm"

INCLUDE "data/pokemon/other/palette_pointer_table.asm"
INCLUDE "data/pokemon/other/palette_pointers.asm"
INCLUDE "data/pokemon/other/palettes.asm"

SECTION "Other Base Data 2", ROMX

INCLUDE "data/pokemon/other/overworld_palette_pointer_table.asm"
INCLUDE "data/pokemon/other/overworld_palette_pointers.asm"
INCLUDE "data/pokemon/other/overworld_palettes.asm"

SECTION "Other Base Data 3", ROMX

;INCLUDE "data/pokemon/other/dex_entry_pointer_table.asm"
;INCLUDE "data/pokemon/other/dex_entry_pointers.asm"


SECTION "Move Animations 1", ROMX

INCLUDE "data/moves/animations.asm"


SECTION "Kanto Overworld Sprites", ROMX

INCLUDE "data/pokemon/kanto/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/kanto/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/kanto/overworld_sprites.asm"


SECTION "Johto Overworld Sprites", ROMX

INCLUDE "data/pokemon/johto/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/johto/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/johto/overworld_sprites.asm"


SECTION "Hoenn Overworld Sprites", ROMX

INCLUDE "data/pokemon/hoenn/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/hoenn/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/hoenn/overworld_sprites.asm"


SECTION "Sinnoh Overworld Sprites", ROMX

INCLUDE "data/pokemon/sinnoh/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/sinnoh/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/sinnoh/overworld_sprites.asm"


SECTION "Unova Overworld Sprites", ROMX

INCLUDE "data/pokemon/unova/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/unova/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/unova/overworld_sprites.asm"


SECTION "Kalos Overworld Sprites", ROMX

INCLUDE "data/pokemon/kalos/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/kalos/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/kalos/overworld_sprites.asm"


SECTION "Alola Overworld Sprites", ROMX

INCLUDE "data/pokemon/alola/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/alola/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/alola/overworld_sprites.asm"


SECTION "Galar Overworld Sprites", ROMX

INCLUDE "data/pokemon/galar/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/galar/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/galar/overworld_sprites.asm"


SECTION "Other Overworld Sprites", ROMX

INCLUDE "data/pokemon/other/overworld_sprite_pointer_table.asm"
INCLUDE "data/pokemon/other/overworld_sprite_pointers.asm"
INCLUDE "data/pokemon/other/overworld_sprites.asm"

;blank one for when you have no follower
FollowerSpriteGFX::        INCBIN "gfx/pokemon/aa_dummy/overworld.2bpp"
