LoadBlindingFlashPalette:: ; 49409
	ld a, $5
	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld hl, BlindingFlashPalette
	ld bc, 1 palettes
	jp FarCopyWRAM
; 49418

BlindingFlashPalette: ; 49418
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 08, 19, 28
	RGB 05, 05, 16
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc
; 49420

LoadSpecialMapPalette: ; 494ac
	GLOBAL GenericMart_BlockData
	call GetMapHeaderTimeOfDayNybble
	cp PALETTE_DARK
	jr nz, .not_dark
	ld a, [wStatusFlags]
	bit 2, a ; Flash
	jp z, .do_nothing
.not_dark

	ld a, [wTileset]

	cp TILESET_POKECENTER
	jp z, .pokecenter
	ld hl, MartPalette
	cp TILESET_MART
	jp z, .load_eight_bg_palettes
	cp TILESET_FOREST
	jp z, .maybe_special_forest

	call GetOvercastIndex
	and a
	jp z, .do_nothing
	ld hl, OvercastBGPalette
	jp .load_eight_time_of_day_bg_palettes

.do_nothing
	and a
	ret
; 494f2

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
	jp nz, .do_nothing
	ld a, [wMapNumber]
	cp MAP_HIDDEN_TREE_GROTTO
	jp nz, .do_nothing
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
	jp .do_nothing
	;jp nz, .do_nothing
	;ld hl, NavelRockPalette
	;ld a, [wMapGroup]
	;cp GROUP_NAVEL_ROCK_ROOF
	;jp nz, .load_eight_bg_palettes
	;ld a, [wMapNumber]
	;cp MAP_NAVEL_ROCK_ROOF
	;jp nz, .load_eight_bg_palettes
.load_eight_time_of_day_bg_palettes:
	ld a, [wTimeOfDayPal]
	and 3
	ld bc, 8 palettes
	rst AddNTimes
	ld a, $5
	ld de, wUnknBGPals
	ld bc, 8 palettes
	call FarCopyWRAM
	scf
	ret

PokeCenterPalette:
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/pokecenter.pal"
else
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

MartPalette:
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/mart.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

HiddenTreeGrottoPalette:
if !DEF(MONOCHROME)
INCLUDE "maps/HiddenTreeGrotto.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

HiddenCaveGrottoPalette:
if !DEF(MONOCHROME)
INCLUDE "maps/HiddenCaveGrotto.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

OvercastBGPalette:
if DEF(HGSS)
INCLUDE "gfx/tilesets/palettes/hgss/ob.pal"
elif DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/monochrome/ob.pal"
else
INCLUDE "gfx/tilesets/bg_tiles_overcast.pal"
endc

OvercastOBPalette:
if DEF(HGSS)
INCLUDE "gfx/tilesets/palettes/hgss/ob_overcast.pal"
elif DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/monochrome/ob_overcast.pal"
else
INCLUDE "gfx/overworld/npc_sprites_overcast.pal"
endc

MartBluePalette:
if !DEF(MONOCHROME)
	RGB 20, 27, 28
	RGB 06, 22, 25
	RGB 04, 17, 19
	RGB 07, 07, 07
else
	MONOCHROME_RGB_FOUR
endc

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
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/link_trade.pal"
else
rept 8
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
endr
endc

LoadSpecialMapOBPalette:
	call GetOvercastIndex
	and a
	jr z, .not_overcast
	ld hl, OvercastOBPalette
	ld a, [wTimeOfDayPal]
	and 3
	ld bc, 8 palettes
	rst AddNTimes
	ld a, $5
	ld de, wUnknOBPals
	ld bc, 8 palettes
	jp FarCopyWRAM

.not_overcast
	ld a, [wMapGroup]
	cp GROUP_KRISS_HOUSE_2F 
	jr nz, .not_lyras_house_2f_or_kriss_house_2f
	cp MAP_KRISS_HOUSE_2F
	jp z, .load_party_mon_palettes
	
.load_single_palette:
	ld bc, 1 palettes
.load_ob_palettes:
	ld a, $5
	jp FarCopyWRAM

.not_lyras_house_2f_or_kriss_house_2f
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	;cp CINNABAR_VOLCANO
	;jr z, .load_bg_rock_palette
	;cp DIM_CAVE
	;jr z, .load_bg_rock_palette
	;cp ICE_PATH
	;jr z, .load_bg_rock_palette
	;cp SEAFOAM_ISLANDS
	;jr z, .load_bg_rock_palette
	;cp WHIRL_ISLANDS
	;ret z
.load_bg_rock_palette
	ld hl, wUnknBGPals palette PAL_BG_BROWN
.load_rock_palette
	ld de, wUnknOBPals palette PAL_OW_ROCK
	jp .load_single_palette

.get_timeofday_party_mon_palettes:
	ld hl, OverworldPartyMonPalettes
	ld a, [wTimeOfDayPal]
	and 3
	ld bc, 3 palettes
	rst AddNTimes
	ret

.load_gray_party_mon_palette:
	call .get_timeofday_party_mon_palettes
	ld de, wUnknOBPals palette PAL_OW_ROCK
	ld bc, 1 palettes
	ld a, $5
	jp FarCopyWRAM

.load_party_mon_palettes:
	call .get_timeofday_party_mon_palettes
	ld de, wUnknOBPals palette PAL_OW_SILVER
	ld bc, 3 palettes
	ld a, $5
	jp FarCopyWRAM

VermilionGymOBPalette_Tree:
if !DEF(MONOCHROME)
	RGB 27, 31, 27
	RGB 31, 31, 30
	RGB 19, 24, 31
	RGB 05, 10, 27
else
	MONOCHROME_RGB_FOUR_OW
endc

LightningIslandOBPalette_Tree:
if !DEF(MONOCHROME)
	RGB 19, 15, 10
	RGB 31, 31, 31
	RGB 31, 27, 01
	RGB 31, 16, 01
else
	MONOCHROME_RGB_FOUR_OW
endc

RockTunnelOBPalette_Tree:
if !DEF(MONOCHROME)
	RGB 15, 14, 24
	RGB 31, 30, 31
	RGB 24, 18, 31
	RGB 12, 08, 18
else
	MONOCHROME_RGB_FOUR_OW
endc

LyrasHouse2FOBPalette_Rock:
if !DEF(MONOCHROME)
	RGB 30, 28, 26
	RGB 30, 28, 02
	RGB 08, 14, 24
	RGB 07, 07, 07
else
	MONOCHROME_RGB_FOUR
endc

GoldenrodHarborOBPalette_Purple:
if !DEF(MONOCHROME)
; morn
	RGB 28, 31, 16
	RGB 28, 31, 16
	RGB 18, 19, 31
	RGB 07, 07, 07
; day
	RGB 27, 31, 27
	RGB 27, 31, 27
	RGB 18, 19, 31
	RGB 07, 07, 07
; nite
	RGB 15, 14, 24
	RGB 15, 14, 24
	RGB 10, 09, 20
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR_OW
	MONOCHROME_RGB_FOUR_OW
	MONOCHROME_RGB_FOUR_OW_NIGHT
endc

PokecomCenter1FOBPalette_Rock:
if !DEF(MONOCHROME)
	RGB 30, 28, 26
	RGB 30, 28, 26
	RGB 11, 13, 31
	RGB 07, 07, 07
else
	MONOCHROME_RGB_FOUR
endc

PokecomCenterOfficeOBPalette_Purple:
if !DEF(MONOCHROME)
	RGB 28, 31, 16
	RGB 31, 22, 10
	RGB 07, 17, 21
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR_OW
endc

GoldenrodMuseumOBPalettes_TreeRock:
if !DEF(MONOCHROME)
	RGB 30, 28, 26
	RGB 30, 28, 26
	RGB 13, 13, 13
	RGB 07, 07, 07

	RGB 30, 28, 26
	RGB 31, 28, 28
	RGB 22, 27, 26
	RGB 09, 10, 10
else
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
endc

OverworldPartyMonPalettes:
if !DEF(MONOCHROME)
; morn
	RGB 28,31,16, 31,22,10, 13,13,13, 00,00,00 ; gray
	RGB 28,31,16, 31,22,10, 31,10,11, 00,00,00 ; pink
	RGB 28,31,16, 31,22,10, 03,23,21, 00,00,00 ; teal
; day
	RGB 27,31,27, 31,19,10, 13,13,13, 00,00,00 ; gray
	RGB 27,31,27, 31,19,10, 31,10,11, 00,00,00 ; pink
	RGB 27,31,27, 31,19,10, 03,23,21, 00,00,00 ; teal
; nite
	RGB 15,14,24, 16,09,09, 07,07,10, 00,00,00 ; gray
	RGB 15,14,24, 16,09,09, 17,07,08, 00,00,00 ; pink
	RGB 15,14,24, 16,09,09, 02,12,16, 00,00,00 ; teal
else
rept 6
	MONOCHROME_RGB_FOUR_OW
endr
rept 3
	MONOCHROME_RGB_FOUR_OW_NIGHT
endr
endc
