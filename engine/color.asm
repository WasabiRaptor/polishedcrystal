INCLUDE "engine/vary_colors.asm"

INCLUDE "engine/cgb.asm"

INCLUDE "engine/sgb_border.asm"

CheckShininess::
; Check if a mon is shiny by personality at bc.
; Return carry if shiny.
	ld a, [bc]
	and SHINY_MASK
	jr z, .NotShiny
	scf
	ret

.NotShiny:
	and a
	ret

InitPartyMenuPalettes:
	ld de, wUnknBGPals
	ld hl, PartyMenuBGPals
rept 4
	call LoadHLPaletteIntoDE
endr
	call InitPartyMenuOBPals
	jp WipeAttrMap

ApplyHPBarPals:
	ld a, [wWhichHPBar]
	and a
	jr z, .Enemy
	cp $1
	jr z, .Player
	cp $2
	jr z, .PartyMenu
	ret

.Enemy:
	ld de, wBGPals palette PAL_BATTLE_BG_PLAYER_HP + 2
	jr .okay

.Player:
	ld de, wBGPals palette PAL_BATTLE_BG_ENEMY_HP + 2

.okay
	ld l, c
	ld h, $0
	add hl, hl
	add hl, hl
	ld bc, HPBarInteriorPals
	add hl, bc
	ld bc, 4
	ld a, $5
	call FarCopyWRAM
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

.PartyMenu:
	ld e, c
	inc e
	hlcoord 11, 1, wAttrMap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wCurPartyMon]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop

.done
	lb bc, 2, 8
	ld a, e
	jp FillBoxCGB

LoadPlayerStatusIconPalette:
	ld a, [wPlayerSubStatus2]
	ld de, wBattleMonStatus
	farcall GetStatusConditionIndex
	ld hl, StatusIconPals
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld de, wUnknBGPals palette PAL_BATTLE_BG_STATUS + 2
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadEnemyStatusIconPalette:
	ld a, [wEnemySubStatus2]
	ld de, wEnemyMonStatus
	farcall GetStatusConditionIndex
	ld hl, StatusIconPals
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld de, wUnknBGPals palette PAL_BATTLE_BG_STATUS + 4
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadBattleCategoryAndTypePals:
	ld a, [wPlayerMoveStruct + MOVE_CATEGORY]
	ld b, a
	ld a, [wPlayerMoveStruct + MOVE_TYPE]
	ld c, a
	ld de, wUnknBGPals palette PAL_BATTLE_BG_TYPE_CAT + 2
LoadCategoryAndTypePals:
	ld hl, CategoryIconPals
	ld a, b
	add a
	add a
	push bc
	ld c, a
	ld b, 0
	add hl, bc
	ld bc, 4
	ld a, $5
	push de
	call FarCopyWRAM
	pop de

	ld hl, TypeIconPals
	pop bc
	ld a, c
	add a
	ld c, a
	ld b, 0
	add hl, bc
	inc de
	inc de
	inc de
	inc de
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadKeyItemIconPalette:
	ld a, [wCurKeyItem]
	dec a
	ld bc, KeyItemIconPalettes
	jr LoadIconPalette

LoadItemIconPalette:
	ld a, [wCurSpecies]
	ld bc, ItemIconPalettes
LoadIconPalette:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, bc
	ld de, wUnknBGPals palette 7 + 2
	ld bc, 4
	ld a, $5
	call FarCopyWRAM
	ld hl, BlackPalette
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadTMHMIconPalette:
	ld a, [wCurTMHM]
	dec a
	ld hl, TMHMTypes
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld hl, TMHMTypeIconPals
	ld c, a
	ld b, 0
rept 4
	add hl, bc
endr
	ld de, wUnknBGPals palette 7 + 2
	ld bc, 4
	ld a, $5
	call FarCopyWRAM
	ld hl, BlackPalette
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadStatsScreenPals:
	ld hl, StatsScreenPagePals
	ld b, 0
	add hl, bc
	add hl, bc
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld a, [hli]
	ld [wUnknBGPals palette 0], a
	ld [wUnknBGPals palette 2], a
	ld a, [hl]
	ld [wUnknBGPals palette 0 + 1], a
	ld [wUnknBGPals palette 2 + 1], a
	pop af
	ldh [rSVBK], a
	call ApplyPals
	ld a, $1
	ret

LoadMailPalettes:
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, MailPals
	add hl, de
	ld de, wUnknBGPals
	ld bc, 1 palettes
	ld a, $5
	call FarCopyWRAM
	call ApplyPals
	call WipeAttrMap
	jp ApplyAttrMap

LoadHLPaletteIntoDE:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld c, $8
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	pop af
	ldh [rSVBK], a
	ret


FillBoxCGB:
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret

ResetBGPals:
	push af
	push bc
	push de
	push hl

	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a

	ld hl, wUnknBGPals
	ld c, 8
.loop
if !DEF(MONOCHROME)
	ld a, $ff ; RGB 31, 31, 31
rept 4
	ld [hli], a
endr
	xor a ; RGB 00, 00, 00
rept 4
	ld [hli], a
endr
else
rept 2
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [hli], a
endr
rept 2
	ld a, PAL_MONOCHROME_BLACK % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_BLACK / $100
	ld [hli], a
endr
endc
	dec c
	jr nz, .loop

	pop af
	ldh [rSVBK], a

	pop hl
	pop de
	pop bc
	pop af
	ret

WipeAttrMap:
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	jp ByteFill

ApplyPals:
	ld hl, wUnknBGPals
	ld de, wBGPals
	ld bc, 16 palettes
	ld a, $5
	jp FarCopyWRAM

ApplyAttrMap:
	ldh a, [rLCDC]
	bit 7, a
	jr nz, ApplyAttrMapVBank0
	hlcoord 0, 0, wAttrMap
	debgcoord 0, 0
	ld b, SCREEN_HEIGHT
	ld a, 1
	ldh [rVBK], a
.row
	ld c, SCREEN_WIDTH
.col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .col
	ld a, BG_MAP_WIDTH - SCREEN_WIDTH
	add e
	jr nc, .okay
	inc d
.okay
	ld e, a
	dec b
	jr nz, .row
	xor a
	ldh [rVBK], a
	ret

ApplyAttrMapVBank0::
	ldh a, [hBGMapMode]
	push af
	ld a, 2
	ldh [hBGMapMode], a
	call Delay2
	pop af
	ldh [hBGMapMode], a
	ret

ApplyPartyMenuHPPals: ; 96f3
	ld hl, wHPPals
	ld a, [wHPPalIndex]
	ld e, a
	ld d, $0
	add hl, de
	ld e, l
	ld d, h
	ld a, [de]
	inc a
	ld e, a
	hlcoord 11, 2, wAttrMap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wHPPalIndex]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop
.done
	lb bc, 1, 8
	ld a, e
	jp FillBoxCGB

InitPartyMenuOBPals:
	ld hl, PartyMenuOBPals
	ld de, wUnknOBPals
	ld bc, 8 palettes
	ld a, $5
	jp FarCopyWRAM

InitPokegearPalettes:
; This is needed because the regular palette is dark at night.
	ld hl, PokegearOBPals
	ld de, wUnknOBPals
	ld bc, 2 palettes
	ld a, $5
	jp FarCopyWRAM

INCLUDE "engine/palettes.asm"

InitCGBPals::
	ld a, $1
	ldh [rVBK], a
	ld hl, VTiles0
	ld bc, $200 tiles
	xor a
	call ByteFill
	xor a
	ldh [rVBK], a
	ld a, $80
	ldh [rBGPI], a
	ld c, 4 * 8
.bgpals_loop
if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ldh [rBGPD], a
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ldh [rBGPD], a
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ldh [rBGPD], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ldh [rBGPD], a
endc
	dec c
	jr nz, .bgpals_loop
	ld a, $80
	ldh [rOBPI], a
	ld c, 4 * 8
.obpals_loop
if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ldh [rOBPD], a
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ldh [rOBPD], a
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ldh [rOBPD], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ldh [rOBPD], a
endc
	dec c
	jr nz, .obpals_loop
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, wUnknBGPals
	call .LoadWhitePals
	ld hl, wBGPals
	call .LoadWhitePals
	pop af
	ldh [rSVBK], a
	ret

.LoadWhitePals:
	ld c, 4 * 16
.loop
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
	jr nz, .loop
	ret

CopyData: ; 0x9a52
; copy bc bytes of data from hl to de
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, CopyData
	ret
; 0x9a5b

ClearBytes: ; 0x9a5b
; clear bc bytes of data starting from de
	xor a
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, ClearBytes
	ret
; 0x9a64

LoadMapPals:
	farcall LoadSpecialMapPalette
	jr c, .got_pals

	; Which palette group is based on whether we're outside or inside
	ld a, [wPermission]
	and 7
	ld e, a
	ld d, 0
	ld hl, EnvironmentColorsPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	; Futher refine by time of day
	ld a, [wTimeOfDayPal]
	and 3
	add a
	add a
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	; Switch to palettes WRAM bank
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, wUnknBGPals
	ld b, 8
.outer_loop
	ld a, [de] ; lookup index for TilesetBGPalette
	push de
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, TilesetBGPalette
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld c, 1 palettes
.inner_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .inner_loop
	pop de
	inc de
	dec b
	jr nz, .outer_loop
	pop af
	ldh [rSVBK], a

.got_pals
	ld a, [wTimeOfDayPal]
	and 3
	ld bc, 8 palettes
	ld hl, MapObjectPals
	rst AddNTimes
	ld de, wUnknOBPals
	ld bc, 8 palettes
	ld a, BANK(wUnknOBPals)
	call FarCopyWRAM

	farcall LoadSpecialMapOBPalette

	ld a, [wTileset]
	cp TILESET_FOREST ; for Yellow Forest
	ret z

	; overcast maps have their own roof color table
	call GetOvercastIndex
	and a
	jr z, .not_overcast
	dec a
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, OvercastRoofPals
	jr .get_roof_color

.not_overcast
	ld a, [wPermission]
	cp TOWN
	jr z, .outside
	cp ROUTE
	jr z, .outside
	cp PERM_5
	ret nz
.outside
	ld a, [wMapGroup]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, RoofPals
.get_roof_color
	add hl, de
	ld a, [wTimeOfDayPal]
	and 3
	cp MIDNIGHT
	jr c, .morn_day
rept 4
	inc hl
endr
.morn_day
	ld de, wUnknBGPals palette 6 + 2
	ld bc, 4
	ld a, $5
	jp FarCopyWRAM

INCLUDE "data/maps/environment_colors.asm"

TilesetBGPalette:
INCLUDE "gfx/tilesets/bg_tiles.pal"


MapObjectPals:
INCLUDE "gfx/overworld/npc_sprites.pal"


RoofPals:
INCLUDE "gfx/tilesets/roofs.pal"


OvercastRoofPals:
INCLUDE "gfx/tilesets/roofs_overcast.pal"

GetBattlemonBackpicPalette:
	farcall GetPartyMonPersonality
	ld c, l
	ld b, h
	ld a, [wTempBattleMonGroup]
	push af
	ld a, [wTempBattleMonSpecies]
	push af
	ld a, [wTempBattleMonForm]
	push af
	push de
	ld a, [wPlayerAbility]
	cp ILLUSION
	ld a, [wTempBattleMonSpecies]
	jr nz, .no_illusion
	ld a, [wPlayerSubStatus3]
	and 1 << SUBSTATUS_DISGUISE_BROKEN
	jr nz, .no_illusion
	pop af
	ld a, [wPartyCount]
	ld hl, wPartyMon1Group
	farcall GetIllusion

.no_illusion
	pop de
	call GetPlayerOrMonPalette
	pop af
	ld [wTempBattleMonForm], a
	pop af
	ld [wTempBattleMonSpecies], a
	pop af
	ld [wTempBattleMonGroup], a
	ld a, [wTempBattleMonGroup]
	ld [wCurPartyGroup], a
	ld [wCurGroup], a
	ld a, [wTempBattleMonSpecies]
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	ld a, [wTempBattleMonForm]
	ld [wCurForm], a
	ret

GetEnemyFrontpicPalette:
	farcall GetEnemyMonPersonality
	ld c, l
	ld b, h
	ld a, [wTempEnemyMonGroup]
	push af
	ld a, [wTempEnemyMonSpecies]
	push af
	ld a, [wTempEnemyMonForm]
	push af
	push de
	ld a, [wEnemyAbility]
	cp ILLUSION
	ld a, [wTempEnemyMonSpecies]
	jr nz, .no_illusion
	ld a, [wEnemySubStatus3]
	and 1 << SUBSTATUS_DISGUISE_BROKEN
	jr nz, .no_illusion
	pop af
	ld a, [wOTPartyCount]
	ld hl, wOTPartyMon1Group
	farcall GetIllusion

.no_illusion
	pop de
	call GetFrontpicPalette
	pop af
	ld [wTempEnemyMonForm], a
	pop af
	ld [wTempEnemyMonSpecies], a
	pop af
	ld [wTempEnemyMonGroup], a
	ld a, [wTempEnemyMonGroup]
	ld [wCurPartyGroup], a
	ld [wCurGroup], a
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	ld a, [wTempEnemyMonForm]
	ld [wCurForm], a
	ret

GetPlayerOrMonPalette:
	and a
	jp nz, GetMonPalette
	ld hl, PlayerPalette
	ld a, wPlayerOverworldPalette
	ld bc, 4
	rst AddNTimes
	jp LoadPalette_White_Col1_Col2_Black

GetFrontpicPalette:
	and a
	jp nz, GetMonPalette
	ld a, [wTrainerClass]

GetTrainerPalette:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, TrainerPalettes
	add hl, bc
	jp LoadPalette_White_Col1_Col2_Black

INCLUDE "data/trainers/palettes.asm"

GetPaintingPalettePointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PaintingPalettes
	add hl, bc
	ret

INCLUDE "data/events/paintings/palettes.asm"

LoadPaintingPalette:
	; a = class
	ld a, [wTrainerClass]
	; hl = palette
	call GetPaintingPalettePointer
	; load palette in BG 7
	ld a, $5
	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld bc, 8
	jp FarCopyWRAM

LoadPartyMonPalette:
	; bc = personality
	ld hl, wPartyMon1Group
	ld a, [wCurPartyMon]
	predef GetPartyLocation
	predef GetPartyMonGroupSpeciesAndForm

	ld hl, wPartyMon1Personality
	ld a, [wCurPartyMon]
	predef GetPartyLocation
	ld c, l
	ld b, h
	; a = species
	ld a, [wCurPartySpecies]
	; hl = palette
	ld de, wUnknBGPals palette PAL_BG_TEXT
	call GetMonPalette
	; load palette in BG 7
	; hl = DVs
	ld hl, wPartyMon1DVs
	ld a, [wCurPartyMon]
	predef GetPartyLocation
	; b = species
	ld a, [wCurPartySpecies]
	ld b, a
	; vary colors by DVs
	call CopyDVsToColorVaryDVs
	ld hl, wUnknBGPals palette PAL_BG_TEXT + 2
	jp VaryColorsByDVs

LoadPortraitPalette:
	call GetPortraitPalettePointer
	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld bc, 1 palettes
	ld a, BANK(wUnknBGPals)
	jp FarCopyWRAM

GetPortraitPalettePointer:
	ld a, [wCurSpecies]
	ld l, a
	ld h, 0

	ld bc, PortraitPalettes ;changed this of course

	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
	ret

INCLUDE "data/portraits/portrait_palettes.asm"
