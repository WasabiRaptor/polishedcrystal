; Syntactic sugar macros

lb: MACRO ; r, hi, lo
	ld \1, ((\2) & $ff) << 8 | ((\3) & $ff)
ENDM

ln: MACRO ; r, hi, lo
	ld \1, ((\2) & $f) << 4 | ((\3) & $f)
ENDM

ldpixel: MACRO
if _NARG >= 5
	lb \1, \2 * 8 + \4, \3 * 8 + \5
else
	lb \1, \2 * 8, \3 * 8
endc
ENDM

depixel EQUS "ldpixel de,"
bcpixel EQUS "ldpixel bc,"


; Design patterns

jumptable: MACRO
	ld a, [\2]
	ld e, a
	ld d, 0
	ld hl, \1
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
ENDM

eventflagset   EQUS "flagset wEventFlags,"
eventflagreset EQUS "flagreset wEventFlags,"
eventflagcheck EQUS "flagcheck wEventFlags,"

flagset: MACRO
	ld hl, \1 + (\2 >> 3)
	set (\2 & $7), [hl]
ENDM

flagreset: MACRO
	ld hl, \1 + (\2 >> 3)
	res (\2 & $7), [hl]
ENDM

flagcheck: MACRO
	ld hl, \1 + (\2 >> 3)
	bit (\2 & $7), [hl]
ENDM

changebridgeblock: macro
	; lb de, \1 + 4, \2 + 4
	; call GetBlockLocation
	ld hl, wOverworldMap + (\2 / 2 + 3) * (\4_WIDTH + 6) + \1 / 2 + 3
	; hard-coding the above calculation for efficiency
	ld [hl], \3
ENDM

FullWidthText: macro
	ld a, $ff
	ld [wVariableWidthTextTile], a
	call LoadStandardFont
endm

; INPUT
; \1 = species
; \2 = false
; a = group
; b = species
cppoke: MACRO
	cp GROUP_\1
	jr nz, \2
	ld a, b
	cp \1
	jr nz, \2
ENDM

; INPUT
; \1 = species
; \2 = false
; hl = Pokemon
cppokehl: MACRO
	ld a, [hli]
	cp GROUP_\1
	jr nz, \2
	ld a, [hl]
	cp \1
	jr nz, \2
ENDM

retpokehl: MACRO
	ld a, [hli]
 	cp GROUP_\1
	ret nz
	ld a, [hl]
	cp \1
	ret nz
ENDM

retpoke: MACRO
 	cp GROUP_\1
	ret nz
	ld a, b
	cp \1
	ret nz
ENDM

cp16bcZ: macro
	ld a, c
	cp LOW(\1)
	jr nz, .not_\1
	ld a, b
	cp HIGH(\1)
	jr z, \2
.not_\1
endm

cp16bcNZ: macro
	ld a, c
	cp LOW(\1)
	jr nz, \2
	ld a, b
	cp HIGH(\1)
	jr nz, \2
endm

cp16wramZ: macro
	ld a, [\2]
	cp LOW(\1)
	jr nz, .not_\1
	ld a, [\2 +1]
	cp HIGH(\1)
	jr z, \3
.not_\1
endm

VWTextStart: macro
	ld a, 0
	ld [rVBK], a
IF _NARG == 2
	ld a, (\1 + \2)
	ld [wVariableWidthTextTile], a
	ld a, LOW(VTiles0 tile (\1 + \2))
	ld [wVariableWidthTextVRAM], a
	ld a, HIGH(VTiles0 tile (\1 + \2))
	ld [wVariableWidthTextVRAM+1], a
else
	ld a, (\1)
	ld [wVariableWidthTextTile], a
	ld a, LOW(VTiles0 tile (\1))
	ld [wVariableWidthTextVRAM], a
	ld a, HIGH(VTiles0 tile (\1))
	ld [wVariableWidthTextVRAM+1], a
endc
endm

VWTextStart2: macro
	ld a, 1
	ld [rVBK], a
IF _NARG == 2
	ld a, (\1 + \2)
	ld [wVariableWidthTextTile], a
	ld a, LOW(VTiles3 tile (\1 + \2))
	ld [wVariableWidthTextVRAM], a
	ld a, HIGH(VTiles3 tile (\1 + \2))
	ld [wVariableWidthTextVRAM+1], a
else
	ld a, (\1)
	ld [wVariableWidthTextTile], a
	ld a, LOW(VTiles3 tile (\1))
	ld [wVariableWidthTextVRAM], a
	ld a, HIGH(VTiles3 tile (\1))
	ld [wVariableWidthTextVRAM+1], a
endc
endm

mon_cry: MACRO
IF _NARG == 3
	db \1 ;index
	dw \2, \3 ;pitch, length
ELSE
	db $ff
	dba \1DEDData ; bank/address
	db 0 ;padding
ENDC
ENDM
