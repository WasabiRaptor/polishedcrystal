; Enumerate variables

enum_start: MACRO
if _NARG >= 1
__enum__ = \1
else
__enum__ = 0
endc
if _NARG >= 2
__enumdir__ = \2
else
__enumdir__ = +1
endc
ENDM

enum: MACRO
\1 = __enum__
__enum__ = __enum__ + __enumdir__
ENDM

enum_set: MACRO
__enum__ = \1
ENDM


; Enumerate constants

const_def: MACRO
if _NARG >= 1
const_value = \1
else
const_value = 0
endc
ENDM

const: MACRO
\1 EQU const_value
const_value = const_value + 1
ENDM

const_def_16: MACRO
if _NARG >= 1
const_value_16 = \1
else
const_value_16 = 0
endc
ENDM

const_16: MACRO
HIGH_\1 EQU HIGH(const_value_16)
LOW_\1 EQU LOW(const_value_16)
\1 EQU const_value_16
const_value_16 = const_value_16 + 1
ENDM


shift_const: MACRO
\1 EQU (1 << const_value)
const_value = const_value + 1
ENDM

nat_dexmon_group: macro
	const_def \1
	enum_start \2
endm

nat_dexmon: MACRO
GROUP_\1 EQU __enum__
	const \1
ENDM

evolution: macro
if \1 == EVOLVE_STAT
	db \1, \2, \3, GROUP_\4, \4
elseif \1 == EVOLVE_ITEM
	db \1, HIGH_\2, LOW_\2, GROUP_\3, \3
elseif \1 == EVOLVE_HOLDING
	db \1, HIGH_\2, LOW_\2, GROUP_\3, \3
else
	db \1, \2, GROUP_\3, \3
endc
endm
; Enumerate strings

define: MACRO
if !def(\1)
\1 equs \2
endc
ENDM
