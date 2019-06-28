flypoint: MACRO
	const FLY_\1
	db \2, SPAWN_\1
ENDM

Flypoints:
; landmark, spawn point
	const_def
	flypoint DANIELS_TOWN,    	DANIELS_TOWN
	flypoint ASAOKA_CITY,    	ASAOKA_CITY
	flypoint KIKUNO_TOWN,    	KIKUNO_TOWN
	flypoint BREGUET_RUINS,    	BREGUET_RUINS
	flypoint HETZELTRON,    	HETZELTRON
	flypoint HATTORI_VILLAGE, 	HATTORI_VILLAGE
	db -1
