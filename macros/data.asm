; Value macros

percent EQUS "* $ff / 100"


; Constant data (db, dw, dl) macros

dwb: MACRO
	dw \1
	db \2
ENDM

dbw: MACRO
	db \1
	dw \2
ENDM

dbbw: MACRO
	db \1, \2
	dw \3
ENDM

dbbbw: MACRO
	db \1, \2, \3
	dw \4
ENDM

dbww: MACRO
	db \1
	dw \2, \3
ENDM

dbbww: MACRO
	db \1, \2
	dw \3, \4
ENDM

dbbwww: MACRO
	db \1, \2
	dw \3, \4, \5
ENDM

dn: MACRO
	rept _NARG / 2
	db (\1) << 4 + (\2)
	shift
	shift
	endr
ENDM

dx: MACRO
x = 8 * ((\1) - 1)
	rept \1
	db ((\2) >> x) & $ff
x = x + -8
	endr
ENDM

dt: MACRO ; three-byte (big-endian)
	dx 3, \1
ENDM

dd: MACRO ; four-byte (big-endian)
	dx 4, \1
ENDM

bigdw: MACRO ; big-endian word
	dx 2, \1
ENDM

dba: MACRO ; dbw bank, address
	rept _NARG
	dbw LOW(BANK(\1)), \1
	shift
	endr
ENDM

dab: MACRO ; dwb address, bank
	rept _NARG
	dwb \1, BANK(\1)
	shift
	endr
ENDM

dbba: MACRO
	db \1
	dba \2
ENDM

dbbba: MACRO
	db \1, \2
	dba \3
ENDM

add_pictable: macro
	dw \1PicPointers
endm

add_pics: MACRO ; dba Frontpic, Backpic
	dba \1Frontpic
	dba \1Backpic
	ENDM

add_pokedexentrytable: macro
	dw \1PokedexEntryPointers
endm

add_pokedexentry: macro
	dba \1PokedexEntry
endm

add_basedatatable: macro
	dw \1BaseDataPointers
endm

add_basedata: macro
	dw \1BaseData
endm

add_nametable: macro
	dw \1Names
endm

add_name: macro
	dw \1Name
endm

add_palettetable: macro
	dw \1PalettePointers
endm

add_palettes: macro
	dw \1Palettes
endm

add_evosattackstable: macro
	dw \1EvosAttacksPointers
endm

add_evosattacks: macro
	dw \1EvosAttacks
endm

add_eggmovestable: macro
	dw \1EggMovesPointers
endm

add_eggmoves: macro
	dw \1EggMoves
endm

add_icontable: macro
	dba \1IconPointers
endm

add_icon: macro
	dba \1Icon
endm

add_bitmaskstable: macro
	dw \1BitmasksPointers
endm

add_bitmasks: macro
	dw \1Bitmasks
endm

add_anim: macro
	dw \1Animation
endm

add_idleanim: macro
	dw \1AnimationIdle
endm

add_framestable: macro
	dw \1FramesPointers
ENDM

add_frames: macro
	dw \1Frames
ENDM

variant_animdata: macro
    dw \1AnimationPointers, \1AnimationIdlePointers
endm

regional_animdata: macro
    dba \1AnimPointerTable
endm

regional_frames: macro
    dbw BANK(\1Frames), \1FramesPointerTable
endm

regional_bitmasks: macro
    dbw BANK(\1Bitmasks), \1BitmasksPointerTable
endm

regional_basedata: macro
    dba \1BaseDataPointerTable
endm

regional_evosattacks: macro
    dba \1EvosAttacksPointerTable
endm

regional_evomoves: macro
    dba \1EvolutionMovesPointerTable
endm

regional_palettes: macro
    dba \1PalettePointerTable
endm

regional_picpointers: macro
    dbw BANK(\1PicPointers), \1PicPointerTable
endm

dbpixel: MACRO
if _NARG >= 4
	db \1 * 8 + \3, \2 * 8 + \4
else
	db \1 * 8, \2 * 8
endc
endm

dsprite: MACRO
	db (\1 * 8) % $100 + \2, (\3 * 8) % $100 + \4, \5, \6
endm


bcd: MACRO
	rept _NARG
	dn ((\1) % 100) / 10, (\1) % 10
	shift
	endr
ENDM


sine_wave: MACRO
; \1: amplitude

x = 0
	rept $20
	; Round up.
	dw (sin(x) + (sin(x) & $ff)) >> 8
x = x + (\1) * $40000
	endr
ENDM

assert: MACRO
	if !(\1)
		if _NARG > 1
			fail \2
		else
			fail "Assertion failed: \1"
		endc
	endc
ENDM

genders: MACRO
; eight arguments, all MALE ($00) or FEMALE ($80)
; TODO: get bitfield genders to work
;x = 0
;rept 8
;x = x << 1
;x = x + (\1 >> 7)
;	shift
;endr
;	db x
rept 8
	db \1
	shift
endr
ENDM

NaN EQU 0
undefined EQU 0
