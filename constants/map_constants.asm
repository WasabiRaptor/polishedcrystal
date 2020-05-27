newgroup: MACRO
const_value = const_value + 1
	enum_start 1
ENDM

map_const: MACRO
GROUP_\1 EQU const_value
	enum MAP_\1
\1_WIDTH  EQU \2
\1_HEIGHT EQU \3
ENDM

GROUP_N_A  EQU -1
MAP_N_A    EQU -1

GROUP_NONE EQU 0
MAP_NONE   EQU 0

; map group ids
	const_def

	newgroup ;1

	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,                          5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO,                         20, 45 ;  5

	newgroup ;2

	map_const KRISS_HOUSE_1F,                              6,  4 ;  6
	map_const KRISS_HOUSE_2F,                              4,  3 ;  7
	map_const DAYCARE,                                     4,  4 ; 30

	newgroup ;3

	map_const DANIELS_TOWN,                             	16,  18 ;  1
	map_const BRIDGE,                             			9,   25  ;  2
	map_const ASAOKA_CITY,                             		20,  18 ;  3

	map_const GELID_RAVINE_2,                       27,  12 ;  4
	map_const GELID_RAVINE,                         27,  18 ;  5
	map_const ROUTE_N_E_2,                         	18,  9  ;  6

	map_const KIKUNO_TOWN,                             	18,  12  ;  7

	map_const OUEST_PATHWAY,                           	40,  9  ;  8

	map_const CENDRE_LOWLAND_1,                         30,  27 ;  9
	map_const CENDRE_LOWLAND_2,                         10,  23 ;  10
	map_const CENDRE_LOWLAND_3,                         10,  23 ;  11

	map_const BREGUET_RUINS,                        10,  24 ;  12

	map_const MINAMI_WETLANDS_ENTRANCE,             14,  9 ;  13
	map_const MINAMI_WETLANDS,                      30,  27 ;  14

	map_const SYLVAN_TRAIL_1,                       30,  9  ;  15
	map_const SYLVAN_TRAIL_2,                       29,  9  ;  16
	map_const HETZELTRON,                           15,  15  ;  17

	map_const ROUTE_S_E_1,                         	49,  9  ;  18

	map_const ROUTE_S_E_2,                         	30,  9  ;  19; not being used

	map_const HATTORI_VILLAGE,                      22,  13  ;  20

	map_const LAKE_1,                             	37,  15 ;  21
	map_const LAKE_2,                             	30,  18 ;  22
	map_const LAKE_3,                             	11,  7  ;  23

	map_const ROUTE_FAKE_EXIT,                    	10,  18 ;  24
	map_const ROUTE_FAKE_EXIT_LOOP,               	10,  9  ;  25

	newgroup ;4
;every way crossroads
	map_const MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST,	    5,  5 ;  1

;T shape crossroads
	map_const MYSTERY_DUNGEON_NORTH_SOUTH_EAST,			    5,  5 ;  2
	map_const MYSTERY_DUNGEON_NORTH_SOUTH_WEST,			    5,  5 ;  3
	map_const MYSTERY_DUNGEON_NORTH_EAST_WEST,			    5,  5 ;  4
	map_const MYSTERY_DUNGEON_SOUTH_EAST_WEST,			    5,  5 ;  5

;straight paths
	map_const MYSTERY_DUNGEON_NORTH_SOUTH,				    5,  5 ;  6
	map_const MYSTERY_DUNGEON_EAST_WEST,				    5,  5 ;  7

;the four corners
	map_const MYSTERY_DUNGEON_NORTH_EAST,				    5,  5 ;  8
	map_const MYSTERY_DUNGEON_NORTH_WEST,				    5,  5 ;  9
	map_const MYSTERY_DUNGEON_SOUTH_EAST,				    5,  5 ;  10
	map_const MYSTERY_DUNGEON_SOUTH_WEST,				    5,  5 ;  11

;dead ends
	map_const MYSTERY_DUNGEON_NORTH,					    5,  5 ;  12
	map_const MYSTERY_DUNGEON_SOUTH,					    5,  5 ;  13
	map_const MYSTERY_DUNGEON_EAST,						    5,  5 ;  14
	map_const MYSTERY_DUNGEON_WEST,						    5,  5 ;  15
