LoadBlindingFlashPalette:: ; 49409
	ld a, $5
	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld hl, BlindingFlashPalette
	ld bc, 1 palettes
	jp FarCopyWRAM
; 49418

OverworldTextboxPalette:
BlindingFlashPalette: ; 49418
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 05, 05, 16
	RGB 00, 00, 00
; 49420

LoadSpecialMapPalette: ; 494ac
	call GetMapHeaderTimeOfDayNybble
	cp PALETTE_DARK
	jr nz, .not_dark
	ld a, [wStatusFlags]
	bit 2, a ; Flash
	jp z, .default_palette
.not_dark

	ld a, [wTileset]

	ld hl, PokeCenterPalette
	cp TILESET_POKECENTER
	jp z, .load_eight_bg_palettes
	ld hl, MartPalette
	cp TILESET_MART
	jp z, .load_eight_bg_palettes
	cp TILESET_FOREST
	jp z, .maybe_special_forest

	call GetOvercastIndex
	and a
	jp z, .default_palette
	ld hl, OvercastBGPalette
	jp .load_eight_time_of_day_bg_palettes

.pokecenter
	ld hl, PokeCenterPalette
.load_eight_bg_palettes:
	ld a, $5
	ld de, wUnknBGPals
	ld bc, 8 palettes
	call FarCopyWRAM

; replace green with Poké Mart blue for maps using Mart.ablk
	ld a, [wMapBlockDataBank]
	cp BANK(GenericMart_BlockData)
	jr nz, .not_mart
	ld a, [wMapBlockDataPointer]
	cp GenericMart_BlockData % $100
	jr nz, .not_mart
	ld a, [wMapBlockDataPointer + 1]
	cp GenericMart_BlockData / $100
	jr nz, .not_mart
	ld hl, MartBluePalette
	ld a, $5
	ld de, wUnknBGPals palette PAL_BG_GREEN
	ld bc, 1 palettes
	call FarCopyWRAM
.not_mart

	scf
	ret

.maybe_special_forest
	ld a, [wMapGroup]
	cp GROUP_HIDDEN_TREE_GROTTO
	jp nz, .default_palette
	ld a, [wMapNumber]
	cp MAP_HIDDEN_TREE_GROTTO
	jp nz, .default_palette
	ld hl, HiddenTreeGrottoPalette
	jp .load_eight_bg_palettes

.maybe_special_cave
	ld a, [wMapGroup]
	cp GROUP_HIDDEN_CAVE_GROTTO
	jr nz, .not_hidden_cave_grotto
	ld a, [wMapNumber]
	cp MAP_HIDDEN_CAVE_GROTTO
	jr nz, .not_hidden_cave_grotto
	ld hl, HiddenCaveGrottoPalette
	jp .load_eight_bg_palettes

.not_hidden_cave_grotto
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	;ld hl, DimCavePalette
	;cp DIM_CAVE
	;jp z, .load_eight_bg_palettes
	;cp NAVEL_ROCK
	jp .default_palette
	;jp nz, .default_palette
	;ld hl, NavelRockPalette
	;ld a, [wMapGroup]
	;cp GROUP_NAVEL_ROCK_ROOF
	;jp nz, .load_eight_bg_palettes
	;ld a, [wMapNumber]
	;cp MAP_NAVEL_ROCK_ROOF
	;jp nz, .load_eight_bg_palettes

.default_palette
	ld a, [wPermission]
	ld hl, IndoorPalette
	cp INDOOR
	jr z, .load_eight_bg_palettes
	ld hl, InvarPalette

.load_eight_time_of_day_bg_palettes:
	ld a, [wTimeOfDayPal]
	push af
	ld a, BANK(wUnknBGPals)
	ldh [rSVBK], a
	ld de, wUnknBGPals
	ld bc, 8 palettes
	rst CopyBytes

	pop af
	ld b, a
	ld c, 32
	ld hl, wUnknBGPals
.BGColorLoop
	push bc
	call GetColorToD
	pop bc
	ld a, b
	dec c
	jr nz, .BGColorLoop

	;copy this for the tall grass effects
	ld hl, wUnknBGPals palette 2
	ld de, wUnknOBPals palette 7
	ld bc, 1 palettes
	rst CopyBytes

	ld a, BANK(wTimeOfDayPal)
	ldh [rSVBK], a
	scf
	ret

InvarPalette:
INCLUDE "gfx/tilesets/invar.pal"

IndoorPalette:
INCLUDE "gfx/tilesets/indoor.pal"

PokeCenterPalette:
INCLUDE "gfx/tilesets/pokecenter.pal"

MartPalette:
INCLUDE "gfx/tilesets/mart.pal"

HiddenTreeGrottoPalette:
INCLUDE "maps/HiddenTreeGrotto.pal"

HiddenCaveGrottoPalette:
INCLUDE "maps/HiddenCaveGrotto.pal"

OvercastBGPalette:
INCLUDE "gfx/tilesets/bg_tiles_overcast.pal"

OvercastOBPalette:
INCLUDE "gfx/overworld/npc_sprites_overcast.pal"

MartBluePalette:
	RGB 20, 27, 28
	RGB 06, 22, 25
	RGB 04, 17, 19
	RGB 07, 07, 07


LinkTrade_Layout_FillBox: ; 49336
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
; 49346

InitLinkTradePalMap: ; 49856
	hlcoord 0, 0, wAttrMap
	lb bc, 16, 2
	ld a, $4
	call LinkTrade_Layout_FillBox
	ld a, $3
	ldcoord_a 0, 1, wAttrMap
	ldcoord_a 0, 14, wAttrMap
	hlcoord 2, 0, wAttrMap
	lb bc, 8, 18
	ld a, $5
	call LinkTrade_Layout_FillBox
	hlcoord 2, 8, wAttrMap
	lb bc, 8, 18
	ld a, $6
	call LinkTrade_Layout_FillBox
	hlcoord 0, 16, wAttrMap
	lb bc, 2, SCREEN_WIDTH
	ld a, $4
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 1, wAttrMap
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 1, wAttrMap
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 9, wAttrMap
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 9, wAttrMap
	call LinkTrade_Layout_FillBox
	ld a, $2
	hlcoord 2, 16, wAttrMap
	ld [hli], a
	ld a, $7
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $2
	ld [hl], a
	hlcoord 2, 17, wAttrMap
	ld a, $3
	ld bc, 6
	jp ByteFill
; 49811

LoadLinkTradePalette: ; 49811
	ld a, $5
	ld de, wUnknBGPals palette 2
	ld hl, LinkTradePalette
	ld bc, 6 palettes
	call FarCopyWRAM
	farjp ApplyPals
; 49826

LinkTradePalette:
INCLUDE "gfx/tilesets/link_trade.pal"


PlayerPaletteOptions:
INCLUDE "gfx/overworld/npc_sprites.pal" ;duplicating this for now

LoadNPCPalette::
	push de
	ld hl, PlayerPaletteOptions
	ld bc, 1 palettes
	rst AddNTimes
	ld a, [wTimeOfDayPal]
	push af
	ld a, BANK(wUnknOBPals)
	ldh [rSVBK], a
	rst CopyBytes
	pop af
	pop hl
	inc hl
	inc hl
	call GetOBJTimeOfDayPal
	ld a, BANK(wTimeOfDayPal)
	ldh [rSVBK], a
	ret

GetOBJTimeOfDayPal:
	push af
	call GetColorToD
	pop af
	push af
	call GetColorToD
	pop af
	jp GetColorToD

LoadPlayerFollowerOWPalsTimeOfDay::
	call LoadPlayerFollowerOWPals
	ld a, [wTimeOfDayPal]
	push af
	ld a, BANK(wUnknOBPals)
	ldh [rSVBK], a
	pop af
	ld hl, wUnknOBPals palette 0 color 1
	push af
	call GetOBJTimeOfDayPal
	pop af
	ld hl, wUnknOBPals palette 1 color 1
	call GetOBJTimeOfDayPal
	ld a, BANK(wTimeOfDayPal)
	ldh [rSVBK], a
	ret

LoadPlayerFollowerOWPals::
	ld a, [wPlayerOverworldStatus]
	bit 1, a ; is player riding a pokemon?
	jr nz, .riding_temp_follower
	bit 0, a ; is player a pokemon themselves?
	jr nz, .is_a_pokemon

	ld hl, PlayerPaletteOptions
	ld a, [wPlayerOverworldPalette]
	ld bc, 1 palettes
	rst AddNTimes

	ld de, wUnknOBPals
	ld a, BANK(wUnknOBPals)
	call FarCopyWRAM
	jr .got_player_pal

.riding_temp_follower
	ld a, [wFollowerStatus]
	and TEMP_FOLLOWER_MASK
	swap a
	rlca
	dec a
	ld [wCurPartyMon], a
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	jr .get_player_mon_pal

.is_a_pokemon
	ld hl, wPlayerMonGroup
	predef PokemonToGroupSpeciesAndForm

.get_player_mon_pal
	call OWCheckShininess
	ld de, wUnknOBPals
	call GetRelevantMonOverworldPalettes

.got_player_pal
	ld a, [wFollowerStatus]
	bit FOLLOWER_ENABLE, a
	ret z
	and FOLLOWER_MASK
	ret z
	dec a
	ld [wCurPartyMon], a
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	call OWCheckShininess

	ld de, wUnknOBPals palette 1
	jp GetRelevantMonOverworldPalettes

OWCheckShininess:
	ld bc, MON_SHINY - MON_GROUP
	add hl, bc
	bit MON_SHINY_F, [hl]
	jr z, .NotShiny
	scf
	ret

.NotShiny:
	and a
	ret

GetColorToD::
	cp MIDDAY
	ret z
	;inputs
	;a = ToD Pal to use
	;hl = wram color adress

	;outputs
	;ToD color to hl
	push hl

	ld e, [hl]
	inc hl
	ld d, [hl]

; de = colors
; e = gggr:rrrr
; d = 0bbb:bbgg

	bit 7, d ; if this bit is set, the color should not be affected by ToD and be consistent across all times, used for glowing things
	jr z, .DoToDColor
	pop hl
	inc hl
	inc hl
	ret

.DoToDColor
;red first
	ld hl, ToDRGBTables
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a

	push hl; RGB table R address

	;get Red for the ToD
	ld a, e
	and %00011111
	ld c, a
	;b is already 0
	add hl, bc ;looking up what value R should be for the ToD from the table
	;
	ld c, [hl]
	ld a, e
	and %11100000
	or c
	ld e, a ;put the converted value back in

	pop hl
	ld c, 32
	add hl, bc ;get from the table for R to the table for G
	push hl

	;get the G for the ToD
	rr d
	rra
	rr d
	rra
	; rotate the bits for g through carry from d into a
	rrca
	rrca
	rrca
	and %00011111
	ld c, a
	;b is still 0
	add hl, bc ;looking up what value G should be for the ToD from the table
	ld a, [hl]
	;values are already bitshifted 3 left
	rla
	rl d
	rla
	rl d
	;rotate the new bits into d
	and %11100000
	ld c, a
	ld a, e
	and %00011111
	or c
	ld e, a ; and the correct G bits are in e now

	pop hl
	ld c, 32
	add hl, bc ;get from the table for G to the table for B

	;get B
	ld a, d
	rrca
	rrca
	and %00011111
	ld c, a
	;b is still 0
	add hl, bc ;looking up what value B should be for the ToD from the table
	ld c, [hl]
	ld a, d
	and %00000011
	or c
	ld d, a ; get the values for B into it

	pop hl
	ld [hl], e
	inc hl
	ld [hl], d
	inc hl
	ret

ToDRGBTables:
	dw DawnR
	dw DawnR
	dw DuskR
	dw NightR

DawnR:
    db 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
DawnG:
    db 0 << 3, 1 << 3, 1 << 3, 2 << 3, 3 << 3, 4 << 3, 4 << 3, 5 << 3, 6 << 3, 6 << 3, 7 << 3, 8 << 3, 9 << 3, 9 << 3, 10 << 3, 11 << 3, 11 << 3, 12 << 3, 13 << 3, 14 << 3, 14 << 3, 15 << 3, 16 << 3, 16 << 3, 17 << 3, 18 << 3, 19 << 3, 19 << 3, 20 << 3, 21 << 3, 21 << 3, 22 << 3
DawnB:
    db 0 << 2, 1 << 2, 1 << 2, 2 << 2, 2 << 2, 3 << 2, 3 << 2, 4 << 2, 4 << 2, 5 << 2, 5 << 2, 6 << 2, 6 << 2, 7 << 2, 7 << 2, 8 << 2, 8 << 2, 9 << 2, 9 << 2, 10 << 2, 10 << 2, 11 << 2, 11 << 2, 12 << 2, 12 << 2, 13 << 2, 13 << 2, 14 << 2, 14 << 2, 15 << 2, 15 << 2, 16 << 2

DuskR:
    db 0, 1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 26, 27, 28
DuskG:
    db 0 << 3, 1 << 3, 1 << 3, 2 << 3, 3 << 3, 3 << 3, 4 << 3, 5 << 3, 5 << 3, 6 << 3, 7 << 3, 7 << 3, 8 << 3, 9 << 3, 9 << 3, 10 << 3, 10 << 3, 11 << 3, 12 << 3, 12 << 3, 13 << 3, 14 << 3, 14 << 3, 15 << 3, 16 << 3, 16 << 3, 17 << 3, 18 << 3, 18 << 3, 19 << 3, 20 << 3, 20 << 3
DuskB:
    db 0 << 2, 1 << 2, 1 << 2, 2 << 2, 3 << 2, 4 << 2, 4 << 2, 5 << 2, 6 << 2, 7 << 2, 7 << 2, 8 << 2, 9 << 2, 10 << 2, 10 << 2, 11 << 2, 12 << 2, 12 << 2, 13 << 2, 14 << 2, 15 << 2, 15 << 2, 16 << 2, 17 << 2, 18 << 2, 18 << 2, 19 << 2, 20 << 2, 21 << 2, 21 << 2, 22 << 2, 23 << 2

NightR:
    db 0, 0, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 6, 6, 6, 7, 7, 8, 8, 9, 9, 9, 10, 10, 11, 11, 12, 12, 12, 13, 13
NightG:
    db 0 << 3, 0 << 3, 1 << 3, 1 << 3, 2 << 3, 2 << 3, 3 << 3, 3 << 3, 3 << 3, 4 << 3, 4 << 3, 5 << 3, 5 << 3, 6 << 3, 6 << 3, 6 << 3, 7 << 3, 7 << 3, 8 << 3, 8 << 3, 8 << 3, 9 << 3, 9 << 3, 10 << 3, 10 << 3, 11 << 3, 11 << 3, 11 << 3, 12 << 3, 12 << 3, 13 << 3, 13 << 3
NightB:
    db 0 << 2, 1 << 2, 1 << 2, 2 << 2, 3 << 2, 3 << 2, 4 << 2, 5 << 2, 5 << 2, 6 << 2, 7 << 2, 7 << 2, 8 << 2, 9 << 2, 9 << 2, 10 << 2, 11 << 2, 11 << 2, 12 << 2, 13 << 2, 13 << 2, 14 << 2, 15 << 2, 15 << 2, 16 << 2, 17 << 2, 17 << 2, 18 << 2, 19 << 2, 19 << 2, 20 << 2, 21 << 2