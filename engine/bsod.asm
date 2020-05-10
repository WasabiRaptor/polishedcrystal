BSOD:
	ldh a, [hCGB]
	and a
	ret nz

	ld de, MUSIC_NONE
	call PlayMusic

	call ClearTileMap

	ldh a, [rSVBK]
	push af
	ld a, 5
	ldh [rSVBK], a
	ld hl, .Palette
	ld de, wBGPals
	ld bc, 1 palettes
	rst CopyBytes
	pop af
	ldh [rSVBK], a

	ld a, 1
	ldh [hCGBPalUpdate], a

	xor a
	ldh [hBGMapHalf], a
	call DelayFrame

	ld de, FontNormal
	ld hl, VTiles1
	lb bc, BANK(FontNormal), 111
	call Get1bpp

	ld hl, VTiles2 tile " "
	ld de, TextBoxSpaceGFX
	lb bc, BANK(FontNormal), 1
	call Get1bpp

	call InitVariableWidthText

	ld de, .Message
	hlcoord 1, 1
	call PlaceString

	call ApplyTilemapInVBlank

.infiniteloop
	call DelayFrame
	jr .infiniteloop
; 4eac5

.Palette:
if !DEF(MONOCHROME)
	RGB 00, 00, 31
	RGB 00, 00, 31
	RGB 31, 31, 31
	RGB 31, 31, 31
else
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
endc

.Message: ; 4eb38
	db "<NEXT1><NEXT1><NEXT1><NEXT1><NEXT1>Pok", $c8, "mon Brass"
	next "<NEXT1><NEXT1><NEXT1><NEXT1><NEXT1>Alpha ver X.X"
	next "<NEXT1><NEXT1><NEXT1><NEXT1><NEXT1><NEXT1><NEXT1>ERROR"
	next " Please report the cause of this"
	next "<NEXT1><NEXT1> crash to the developers"
	next "<NEXT1><NEXT1><NEXT1>Wasabi_Raptor<SHARP>1533"
	next "<NEXT1><NEXT1><NEXT1>Notnat Tlikehis<SHARP>0404"
	next "<NEXT1><NEXT1><NEXT1><NEXT1><NEXT1>Thalins<SHARP>0502@"

; 4eb76
