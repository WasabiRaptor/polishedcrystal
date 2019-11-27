SpecialHo_OhChamber: ; 0x8addb
	ret
; 0x8adef

SpecialOmanyteChamber: ; 8adef
	ret
; 8ae30

SpecialAerodactylChamber: ; 8ae30
	ret
; 8ae4e

SpecialKabutoChamber: ; 8ae4e
	ret
; 8ae68

Special_DisplayUnownWords: ; 8ae68
	ld a, [wScriptVar]
	ld hl, UnownWallMenuDataHeaders
	and a
	jr z, .load

	lb de, $0, $5
.loop
	add hl, de
	dec a
	jr nz, .loop

.load
	call LoadMenuDataHeader
	xor a
	ldh [hBGMapMode], a
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	call MenuBoxCoord2Tile
	inc hl
	ld de, $14
	add hl, de
	add hl, de
	ld a, [wScriptVar]
	ld c, a
	ld de, UnownWallWords
	and a
	jr z, .copy
.loop2
	ld a, [de]
	inc de
	cp $ff
	jr nz, .loop2
	dec c
	jr nz, .loop2

.copy
	call .CopyWord
	ld bc, wAttrMap - wTileMap
	add hl, bc
	call .FillAttr
	call ApplyAttrAndTilemapInVBlank
	call JoyWaitAorB
	call PlayClickSFX
	jp CloseWindow
; 8aebc

.FillAttr: ; 8aee9
	ld a, [de]
	cp $ff
	ret z
	ld a, TILE_BANK | PAL_BG_BROWN
	call .PlaceSquare
	inc hl
	inc hl
	inc de
	jr .FillAttr
; 8aefd

.PlaceSquare: ; 8aefd
	push hl
	ld [hli], a
	ld [hld], a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld [hli], a
	ld [hl], a
	pop hl
	ret
; 8af09

.CopyWord: ; 8af09
	push hl
	push de
.word_loop
	ld a, [de]
	cp $ff
	jr z, .word_done
	ld c, a
	call .ConvertChar
	inc hl
	inc hl
	inc de
	jr .word_loop

.word_done
	pop de
	pop hl
	ret
; 8af1c

.ConvertChar: ; 8af1c
	push hl
	ld a, c
	ld [hli], a
	inc a
	ld [hld], a
	dec a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld c, $10
	add c
	ld [hli], a
	inc a
	ld [hl], a
	pop hl
	ret
; 8af6b

INCLUDE "data/events/unown_walls.asm"
