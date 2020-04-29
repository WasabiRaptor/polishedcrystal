Portrait::
	ld hl, PortraitMenuHeader
	call CopyMenuDataHeader
	call MenuBox
	call UpdateSprites
	ld a, 1
	ld [wIsPortraitOnScreen], a

	;this gets overwritten with the pokemon thats needed every time it is pulled, so I'm just using it here to hold the thing for later
	ld a, [wCurSpecies]
	call LoadPortraitPalette
	call UpdateTimePals

	;everything below here loads the pic in a similar way to how pokemon pics are loaded, but doesn't force the grayscale pal and is working as intended
	xor a
	ldh [hBGMapMode], a
	ldh a, [rSVBK]
	push af

	ld a, [wCurSpecies]
	ld hl, PortraitPicPointers
	ld bc, 5
	rst AddNTimes

	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	ld a, [hli]
	push af ;1
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	push de ;2
	push af; 3
	ld a, [hli]
	ld h, [hl]
	ld l, a
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

PortraitMenuHeader:
	db $40 ; flags
	db PORTRAIT_Y, PORTRAIT_X ; start coords
	db PORTRAIT_Y + PORTRAIT_HEIGHT - 1, PORTRAIT_X + PORTRAIT_WIDTH - 1 ; end coords
	dw NULL
	db 1 ; default option

LoadPortraitPalette:


	ld a, [wCurSpecies]
	ld hl, PortraitPalettePointers
	call NextHLTable

	ld de, wUnknBGPals palette PAL_BG_TEXT
	ld bc, 1 palettes
	ld a, BANK(wUnknBGPals)
	call FarCopyWRAM

	ld de, wUnknOBPals palette 7
	ld bc, 1 palettes
	ld a, BANK(wUnknOBPals)
	jp FarCopyWRAM




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

add_portrait: macro
	dba \1PortraitBG
	dw \1PortraitOAM
endm

add_portraitpal: macro
	dw \1PortraitPalettes
endm

PortraitPicPointers::
	add_portrait LokiSmug
	add_portrait LokiUwU

PortraitPalettePointers:
	add_portraitpal LokiSmug
	add_portraitpal LokiSmug


PortraitPalettes:
LokiSmugPortraitPalettes:
LokiSmugPortraitBGPalette:		INCBIN "gfx/portraits/loki/smugBG.gbcpal"
LokiSmugPortraitOAMPalette:		INCBIN "gfx/portraits/loki/smugOAM.gbcpal"
