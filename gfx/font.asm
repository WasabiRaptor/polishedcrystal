FontTiles::
FontNormal::
INCBIN "gfx/font/normal.1bpp"
FontNarrow:
INCBIN "gfx/font/narrow.1bpp"
FontBold:
INCBIN "gfx/font/bold.1bpp"
FontItalic:
INCBIN "gfx/font/italic.1bpp"
FontSerif:
INCBIN "gfx/font/serif.1bpp"
FontUnown:
INCBIN "gfx/font/unown.1bpp"
FontCommon:
INCBIN "gfx/font/common.1bpp"
FontWondermail::
INCBIN "gfx/font/Wondermail.1bpp"

Frames: ; f8800
INCBIN "gfx/frames/A.1bpp"
INCBIN "gfx/frames/B.1bpp"
INCBIN "gfx/frames/C.1bpp"
INCBIN "gfx/frames/D.1bpp"
INCBIN "gfx/frames/E.1bpp"
INCBIN "gfx/frames/F.1bpp"
INCBIN "gfx/frames/G.1bpp"
INCBIN "gfx/frames/H.1bpp"
INCBIN "gfx/frames/I.1bpp"
INCBIN "gfx/frames/J.1bpp"
INCBIN "gfx/frames/K.1bpp"
INCBIN "gfx/frames/L.1bpp"
INCBIN "gfx/frames/M.1bpp"
INCBIN "gfx/frames/N.1bpp"

; f89b0

; Various misc graphics here.

BattleExtrasGFX:
INCBIN "gfx/battle/hpexpbars.2bpp"

GFX_Stats: ; f89b0
INCBIN "gfx/stats/stats.2bpp"
; f8ac0

StatusIconGFX:
INCBIN "gfx/battle/status.2bpp"

EnemyStatusIconGFX:
INCBIN "gfx/battle/status-enemy.2bpp"

TypeIconGFX:
INCBIN "gfx/battle/types.1bpp"

CategoryIconGFX:
INCBIN "gfx/battle/categories.2bpp"

TownMapGFX: ; f8ba0
INCBIN "gfx/town_map/town_map.2bpp.lz"
; f8ea4

TextBoxSpaceGFX:: ; f9204
INCBIN "gfx/frames/space.1bpp"
; f9214

MapEntryFrameGFX: ; f9344
INCBIN "gfx/frames/map_entry_sign.2bpp"
; f9424

PaintingFrameGFX:
INCBIN "gfx/frames/painting.2bpp"

_LoadStandardOpaqueFont::
	ld a, TRUE
	jp _LoadStandardMaybeOpaqueFont

_LoadStandardFont::
	xor a
_LoadStandardMaybeOpaqueFont:
	ldh [hRequestOpaque1bpp], a
	ld bc, 0
	call LoadStandardFontPointer
	add hl, bc
	ld d, h
	ld e, l
	ld hl, VTiles0 tile $80
	lb bc, BANK(FontNormal), 112
	call GetMaybeOpaque1bpp

	ld hl, VTiles2 tile " "
	ld de, TextBoxSpaceGFX
	lb bc, BANK(FontNormal), 1
	jp GetMaybeOpaque1bpp


LoadStandardFontPointer::
	ld hl, .FontPointers
	ld a, [wOptions2]
	and FONT_MASK
	ld d, 0
	ld e, a
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld h, d
	ld l, e
	ret

.FontPointers:
	dw FontNormal
	dw FontNarrow
	dw FontBold
	dw FontItalic
	dw FontSerif
	dw FontUnown
	dw FontNormal
	dw FontNormal

_LoadFontsBattleExtra:: ; fb4be
	ld de, BattleExtrasGFX
	ld hl, VTiles2 tile BATTLEEXTRA_GFX_START
	lb bc, BANK(BattleExtrasGFX), 32
	call Get2bpp
; fb4cc

LoadFrame:: ; fb4cc
	call GetFrame
	ld d, h
	ld e, l
	ld hl, VTiles0 tile "▼"
	lb bc, BANK(Frames), 16
	jp GetMaybeOpaque1bpp
; fb4f2
GetFrame:
	ld a, [wTextBoxOptions]
	and TEXTBOX_FRAME_MASK
	ld bc, TILES_PER_FRAME * LEN_1BPP_TILE
	ld hl, Frames
	rst AddNTimes
	ret


LoadBattleFontsHPBar: ; fb4f2
	call _LoadFontsBattleExtra

LoadStatusIcons:
	call LoadPlayerStatusIcon
	jp LoadEnemyStatusIcon

LoadPlayerStatusIcon:
	push de
	ld a, [wPlayerSubStatus2]
	ld de, wBattleMonStatus
	farcall GetStatusConditionIndex
	ld hl, StatusIconGFX
	ld de, 2 tiles
.loop
	and a
	jr z, .done
	add hl, de
	dec a
	jr .loop
.done
	ld d, h
	ld e, l
	ld hl, VTiles2 tile $55
	lb bc, BANK(StatusIconGFX), 2
	call Request2bpp
	farcall LoadPlayerStatusIconPalette
	pop de
	ret

LoadEnemyStatusIcon:
	push de
	ld a, [wEnemySubStatus2]
	ld de, wEnemyMonStatus
	farcall GetStatusConditionIndex
	ld hl, EnemyStatusIconGFX
	ld de, 2 tiles
.loop
	and a
	jr z, .done
	add hl, de
	dec a
	jr .loop
.done
	ld d, h
	ld e, l
	ld hl, VTiles2 tile $57
	lb bc, BANK(EnemyStatusIconGFX), 2
	call Request2bpp
	farcall LoadEnemyStatusIconPalette
	pop de
	ret

LoadStatsScreenGFX: ; fb53e
	call _LoadFontsBattleExtra

LoadStatsGFX: ; fb571
	ld de, GFX_Stats
	ld hl, VTiles2 tile $31
	lb bc, BANK(GFX_Stats), 14
	jp Get2bpp
; fb57e
