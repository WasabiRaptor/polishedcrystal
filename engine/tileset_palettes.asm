LoadBlindingFlashPalette:: ; 49409
	ld a, $5
	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld hl, BlindingFlashPalette
	ld bc, 1 palettes
	jp FarCopyWRAM
; 49418

OverworldTextboxPalette:
BlindingFlashPalette: ; 49418
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 31, 31, 31
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

PlayerPaletteOptions:
INCLUDE "gfx/overworld/npc_sprites.pal" ;duplicating this for now

LoadNPCPalette::
	push af
	ld a, [wTimeOfDayPal]
	ld hl, PlayerPaletteOptions
	ld bc, 8 palettes
	rst AddNTimes
	pop af
	ld bc, 1 palettes
	rst AddNTimes

	ld a, BANK(wUnknOBPals)
	jp FarCopyWRAM

LoadSpecialMapOBPalette:

	ld a, [wPlayerOverworldStatus]
	bit 1, a ; is player riding a pokemon?
	jr nz, .riding_temp_follower
	bit 0, a ; is player a pokemon themselves?
	jr nz, .is_a_pokemon

	ld hl, PlayerPaletteOptions
	ld a, [wTimeOfDayPal]
	ld bc, 8 palettes
	rst AddNTimes
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
	ld a, [wTimeOfDayPal]
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
	ld a, [wTimeOfDayPal]
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
