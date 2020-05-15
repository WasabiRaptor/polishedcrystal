Portrait::
	ld [wScriptVar], a
	ld b, a
	ld a, [wBaseNumPortraitEmotes]
	cp b
	jr c, .emote_ok
	xor a ; if the pokemon doesn't have the number of emotes needed for the one requested, use the default neutral one
	ld [wScriptVar], a
.emote_ok
	call CheckIfPortraitWouldKillObjects
	ret c


	ld hl, PortraitMenuHeader
	call CopyMenuDataHeader
	call MenuBox
	call UpdateSprites

;load portrait palettes
	ldh a, [rSVBK]
	push af
	ld a, BANK(wUnknBGPals)
	ldh [rSVBK], a

	ld hl, RegionalPortraitPalTable
	call ProcessPokemonPointertable
	ld a, d
	push af
	ld a, [wCurForm]
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, d
	call GetFarHalfword
	ld a, [wScriptVar]
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, d
	call GetFarHalfword
	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld bc, 1 palettes
	pop af
	push af
	call FarCopyBytes

	ld de, wUnknOBPals palette 7
	ld bc, 1 palettes
	pop af
	call FarCopyBytes

	call UpdateTimePals

	;everything below here loads the pic in a similar way to how pokemon pics are loaded, but doesn't force the grayscale pal and is working as intended
	xor a
	ldh [hBGMapMode], a

	ld hl, RegionalPortraitTable
	call ProcessPokemonPointertable
	ld a, [wCurForm]
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, d
	call GetFarHalfword

	ld a, [wScriptVar]
	ld bc, 5
	rst AddNTimes

	ld a, d
	call GetFarByte
	inc hl
	push af ;1
	ld a, d
	push af ;2
	push hl ;3
	call GetFarHalfword
	ld d, h
	ld e, l
	pop hl ;2
	pop af ;1
	inc hl
	inc hl
	call GetFarHalfword
	pop af ;0
	push af ;1
	push de ;2
	push af ;3

	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	; and now we insert a thing here to get OAM stuff decompressed
	ld a, 1
	ld [rVBK], a
	pop bc; 2
	ld c, 4*4
	ld de, VTiles0 tile $f0
	call DecompressRequest2bpp

	xor a
	ld [rVBK], a
	pop hl ;1
	pop bc; 0
	ld c, 4*4
	ld de, VTiles0 tile $D0
	call DecompressRequest2bpp

	pop af
	ldh [rSVBK], a
	call CloseSRAM
	call SetPortraitOAM

	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $D0
	ldh [hGraphicStartTile], a
	lb bc, 4, 4
	predef PlaceGraphic
	hlcoord 1, 9, wAttrMap
	lb bc, 4, 4
	ld a, PAL_BG_TEXT
	call FillBoxWithByte


	ld b, 1
	jp SafeCopyTilemapAtOnce


ClosePortrait::
	ld hl, wSpritesEnd - (16 * 4) ; only use the last 16 sprites of the 40 available
	ld bc, PortraitOAMEnd - PortraitOAM
	xor a
	call ByteFill

	ld hl, PortraitMenuHeader

	call CopyMenuDataHeader
	call ClearMenuBoxInterior
	call GetMemCGBLayout
	xor a
	ldh [hBGMapMode], a
	call LoadMapPart
	call UpdateSprites
	ld b, 1
	call SafeCopyTilemapAtOnce
	farjp ReloadVisibleSprites

CheckIfPortraitWouldKillObjects:
	ld a, [wPlayerStandingMapY]
	ld e, 3
	ld d, NUM_OBJECT_STRUCTS -1
	ld hl, wFollowerStandingMapY
	ld bc, OBJECT_STRUCT_LENGTH
	call .Check
	ret c

	ld a, [wPlayerStandingMapY]
	inc a
	ld e, 4
	ld d, NUM_OBJECT_STRUCTS -1
	ld hl, wFollowerStandingMapY
.Check:
.loop
	cp [hl]
	jr nz, .next
	dec e
	jr nz, .next
	scf
	ret
.next
	add hl, bc
	dec d
	jr nz, .loop
	and a
	ret

PortraitMenuHeader:
	db $40 ; flags
	db PORTRAIT_Y, PORTRAIT_X ; start coords
	db PORTRAIT_Y + PORTRAIT_HEIGHT - 1, PORTRAIT_X + PORTRAIT_WIDTH - 1 ; end coords
	dw NULL
	db 1 ; default option

PORTRAIT_TOP_LEFT_CORNER_Y EQU 88
PORTRAIT_TOP_LEFT_CORNER_X EQU 16

SetPortraitOAM::
	ld hl, PortraitOAM
	ld de, wSpritesEnd - (16 * 4) ; only use the last 16 sprites of the 40 available
	ld bc, PortraitOAMEnd - PortraitOAM
	rst CopyBytes
	ret

PortraitOAM:
	db PORTRAIT_TOP_LEFT_CORNER_Y, PORTRAIT_TOP_LEFT_CORNER_X, $f0 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+8, PORTRAIT_TOP_LEFT_CORNER_X, $f1 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+16, PORTRAIT_TOP_LEFT_CORNER_X, $f2 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+24, PORTRAIT_TOP_LEFT_CORNER_X, $f3 ,7 | TILE_BANK

	db PORTRAIT_TOP_LEFT_CORNER_Y, PORTRAIT_TOP_LEFT_CORNER_X+8, $f4 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+8, PORTRAIT_TOP_LEFT_CORNER_X+8, $f5 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+16, PORTRAIT_TOP_LEFT_CORNER_X+8, $f6 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+24, PORTRAIT_TOP_LEFT_CORNER_X+8, $f7 ,7 | TILE_BANK

	db PORTRAIT_TOP_LEFT_CORNER_Y, PORTRAIT_TOP_LEFT_CORNER_X+16, $f8 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+8, PORTRAIT_TOP_LEFT_CORNER_X+16, $f9 ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+16, PORTRAIT_TOP_LEFT_CORNER_X+16, $fa ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+24, PORTRAIT_TOP_LEFT_CORNER_X+16, $fb ,7 | TILE_BANK

	db PORTRAIT_TOP_LEFT_CORNER_Y, PORTRAIT_TOP_LEFT_CORNER_X+24, $fc ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+8, PORTRAIT_TOP_LEFT_CORNER_X+24, $fd ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+16, PORTRAIT_TOP_LEFT_CORNER_X+24, $fe ,7 | TILE_BANK
	db PORTRAIT_TOP_LEFT_CORNER_Y+24, PORTRAIT_TOP_LEFT_CORNER_X+24, $ff ,7 | TILE_BANK
PortraitOAMEnd:

RegionalPortraitTable:
	regional_portraits Other; Other
    regional_portraits Kanto
    regional_portraits Johto
    regional_portraits Hoenn
    regional_portraits Sinnoh
    regional_portraits Unova
    regional_portraits Kalos
    regional_portraits Alola
    regional_portraits Galar

RegionalPortraitPalTable:
	regional_portraitpalettes Other; Other
    regional_portraitpalettes Kanto
    regional_portraitpalettes Johto
    regional_portraitpalettes Hoenn
    regional_portraitpalettes Sinnoh
    regional_portraitpalettes Unova
    regional_portraitpalettes Kalos
    regional_portraitpalettes Alola
    regional_portraitpalettes Galar
