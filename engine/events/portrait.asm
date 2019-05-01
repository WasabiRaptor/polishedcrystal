Portrait::
	ld hl, PortraitMenuHeader
	call CopyMenuDataHeader
	call MenuBox
	call UpdateSprites
	
	;this gets overwritten with the pokemon thats needed every time it is pulled, so I'm just using it here to hold the thing for later
	ld a, [wCurSpecies]
	farcall LoadPortraitPalette 
	call UpdateTimePals

	;everything below here loads the pic in a similar way to how pokemon pics are loaded, but doesn't force the grayscale pal and is working as intended
	xor a
	ldh [hBGMapMode], a
	ld de, VTiles0 tile $D0
	ldh a, [rSVBK]
	push af
	push de
	ld a, $44
	and $f
	ld b, a
	push bc
	ld a, [wCurSpecies]
	ld hl, PortraitPicPointers
	ld d, BANK(PortraitPicPointers)	
	ld bc, 3
	rst AddNTimes
	ld a, d
	call GetFarByte
	push af
	inc hl
	ld a, d
	call GetFarHalfword
	pop bc
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress	
	pop bc
	pop hl
	push hl
	ld de, wDecompressScratch
	ld c, 4 * 4
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	pop af
	ldh [rSVBK], a
	call CloseSRAM

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
	ld b, 1
	jp SafeCopyTilemapAtOnce


ClosePortrait::
	ld hl, PortraitMenuHeader
	jp CloseTheWindow

PortraitMenuHeader:
	db $40 ; flags
	db 7, 0 ; start coords
	db 12, 5 ; end coords
	dw NULL
	db 1 ; default option




