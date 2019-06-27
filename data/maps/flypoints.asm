flypoint: MACRO
	const FLY_\1
	db \2, SPAWN_\1
ENDM

Flypoints:
; landmark, spawn point
	const_def
	flypoint HOME,    NEW_BARK_TOWN
	db -1
