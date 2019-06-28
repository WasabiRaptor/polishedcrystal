spawn: MACRO
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints: ; 0x152ab
	spawn KRISS_HOUSE_2F,              3,  3
	spawn DANIELS_TOWN, 19, 8
	spawn ASAOKA_CITY, 19, 15
	spawn KUBOTA_TOWN, 17, 11
	spawn BREGUET_RUINS, 9, 37
	spawn HETZELTRON, 15, 15
	spawn HATTORI_VILLAGE, 21, 13
	spawn MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, 	5, 5
	spawn N_A,                        -1, -1
