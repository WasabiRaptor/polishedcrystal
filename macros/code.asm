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

; \1 = item
; \2 = false
cpcuritem: macro
	ld a, [wCurItem]
	cp HIGH_\1
	jr nz, \2
	ld a, [wCurItem+1]
	cp LOW_\1
	jr nz, \2
endm

; \1 = item
retcuritem: macro
	ld a, [wCurItem]
	cp HIGH_\1
	ret nz
	ld a, [wCurItem+1]
	cp LOW_\1
	ret nz
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
