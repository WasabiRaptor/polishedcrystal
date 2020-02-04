map_attributes: MACRO
; label, map, border block, connections
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_SecondMapHeader::
	db \3
	db \2_HEIGHT, \2_WIDTH
	db BANK(\1_BlockData)
	dw \1_BlockData
	db BANK(\1_MapScriptHeader)
	dw \1_MapScriptHeader
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if "\1" == "north"
_blk = \3_WIDTH * (\3_HEIGHT + -3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "south"
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "west"
_blk = (\3_WIDTH * _src) + \3_WIDTH + -3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 + -6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif "\1" == "east"
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw wDecompressScratch + _blk
	dw wOverworldMap + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMap + _win
endc
ENDM



	map_attributes DanielsTown, DANIELS_TOWN, $61, WEST
	connection west, Bridge, BRIDGE, -3 

	map_attributes Bridge, BRIDGE, $61, WEST | EAST | SOUTH
	connection south, Lake3, LAKE_3, 2 
	connection west, AsaokaCity, ASAOKA_CITY, 11
	connection east, DanielsTown, DANIELS_TOWN, 3 

	map_attributes AsaokaCity, ASAOKA_CITY, $61, EAST | WEST
	connection west, OuestPathway, OUEST_PATHWAY, 9 
	connection east, Bridge, BRIDGE, -11 

	map_attributes GelidRavine, GELID_RAVINE, $61, NORTH | SOUTH | EAST
	connection north, KikunoTown, KIKUNO_TOWN, -1
	connection south, GelidRavine2, GELID_RAVINE_2, 0
	connection east, RouteNE2, ROUTE_N_E_2, -3

	map_attributes GelidRavine2, GELID_RAVINE_2, $61, NORTH | SOUTH
	connection north, GelidRavine, GELID_RAVINE, 0
	connection south, Lake1, LAKE_1, -14

	map_attributes RouteNE2, ROUTE_N_E_2, $61, WEST
	connection west, GelidRavine, GELID_RAVINE, 3

	map_attributes KikunoTown, KIKUNO_TOWN, $61, SOUTH
	connection south, GelidRavine, GELID_RAVINE, 1

	map_attributes OuestPathway, OUEST_PATHWAY, $61, NORTH | SOUTH | EAST
	connection north, CendreLowland1, CENDRE_LOWLAND_1, -10
	connection south, MinamiWetlandsEntrance, MINAMI_WETLANDS_ENTRANCE, 32
	connection east, AsaokaCity, ASAOKA_CITY, -9

	map_attributes CendreLowland1, CENDRE_LOWLAND_1, $61, SOUTH | EAST | WEST
	connection south, OuestPathway, OUEST_PATHWAY, 10
	connection west, CendreLowland3, CENDRE_LOWLAND_3, -9
	connection east, CendreLowland2, CENDRE_LOWLAND_2, -9

	map_attributes CendreLowland2, CENDRE_LOWLAND_2, $61, WEST
	connection west, CendreLowland1, CENDRE_LOWLAND_1, 9

	map_attributes CendreLowland3, CENDRE_LOWLAND_3, $61, WEST | EAST
	connection west, BreguetRuins, BREGUET_RUINS, -15
	connection east, CendreLowland1, CENDRE_LOWLAND_1, 9

	map_attributes BreguetRuins, BREGUET_RUINS, $61, EAST
	connection east, CendreLowland3, CENDRE_LOWLAND_3, 15

	map_attributes MinamiWetlandsEntrance, MINAMI_WETLANDS_ENTRANCE, $61, NORTH | SOUTH
	connection north, OuestPathway, OUEST_PATHWAY, -32
	connection south, MinamiWetlands, MINAMI_WETLANDS, 8

	map_attributes MinamiWetlands, MINAMI_WETLANDS, $61, NORTH | SOUTH | WEST | EAST
	connection north, MinamiWetlandsEntrance, MINAMI_WETLANDS_ENTRANCE, -8
	connection south, RouteFakeExit, ROUTE_FAKE_EXIT, 10
	connection west, SylvanTrail1, SYLVAN_TRAIL_1, 9
	connection east, RouteSE1, ROUTE_S_E_1, 18

	map_attributes SylvanTrail1, SYLVAN_TRAIL_1, $61, SOUTH | EAST
	connection south, SylvanTrail2, SYLVAN_TRAIL_2, -19
	connection east, MinamiWetlands, MINAMI_WETLANDS, -9

	map_attributes SylvanTrail2, SYLVAN_TRAIL_2, $61, NORTH | WEST
	connection north, SylvanTrail1, SYLVAN_TRAIL_1, 19
	connection west, Hetzeltron, HETZELTRON, -3

	map_attributes Hetzeltron, HETZELTRON, $61, EAST
	connection east, SylvanTrail2, SYLVAN_TRAIL_2, 3

	map_attributes RouteSE1, ROUTE_S_E_1, $61, NORTH | EAST | WEST
	connection north, Lake2, LAKE_2, 10
	connection west, MinamiWetlands, MINAMI_WETLANDS, -18
	connection east, HattoriVillage, HATTORI_VILLAGE, -2


	map_attributes RouteSE2, ROUTE_S_E_2, $61, 0 ; dont think this one is needed anymore either


	map_attributes HattoriVillage, HATTORI_VILLAGE, $61, WEST
	connection west, RouteSE1, ROUTE_S_E_1, 2

	map_attributes Lake1, LAKE_1, $61, NORTH | SOUTH | WEST
	connection north, GelidRavine2, GELID_RAVINE_2, 14
	connection south, Lake2, LAKE_2, 10
	connection west, Lake3, LAKE_3, 2

	map_attributes Lake2, LAKE_2, $61, NORTH | SOUTH
	connection north, Lake1, LAKE_1, -10
	connection south, RouteSE1, ROUTE_S_E_1, -10

	map_attributes Lake3, LAKE_3, $61, NORTH | EAST
	connection north, Bridge, BRIDGE, -2
	connection east, Lake1, LAKE_1, -2

	map_attributes RouteFakeExit, ROUTE_FAKE_EXIT, $61, NORTH | SOUTH 
	connection north, MinamiWetlands, MINAMI_WETLANDS, -10
	connection south, RouteFakeExitLoop, ROUTE_FAKE_EXIT_LOOP, 0

	map_attributes RouteFakeExitLoop, ROUTE_FAKE_EXIT_LOOP, $61, NORTH | SOUTH
	connection north, RouteFakeExit, ROUTE_FAKE_EXIT, 0
	connection south, RouteFakeExitLoop, ROUTE_FAKE_EXIT_LOOP, 0


	map_attributes DayCare, DAYCARE, $00, 0

	map_attributes PokeCenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes HiddenTreeGrotto, HIDDEN_TREE_GROTTO, $35, 0
	map_attributes HiddenCaveGrotto, HIDDEN_CAVE_GROTTO, $9, 0

	map_attributes KrissHouse1F, KRISS_HOUSE_1F, $00, 0
	map_attributes KrissHouse2F, KRISS_HOUSE_2F, $00, 0

	map_attributes MysteryDungeonNorthSouthEastWest, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, $61, 0

	map_attributes MysteryDungeonNorthSouthEast, MYSTERY_DUNGEON_NORTH_SOUTH_EAST, $61, 0
	map_attributes MysteryDungeonNorthSouthWest, MYSTERY_DUNGEON_NORTH_SOUTH_WEST, $61, 0
	map_attributes MysteryDungeonNorthEastWest, MYSTERY_DUNGEON_NORTH_EAST_WEST, $61, 0
	map_attributes MysteryDungeonSouthEastWest, MYSTERY_DUNGEON_SOUTH_EAST_WEST, $61, 0

	map_attributes MysteryDungeonNorthSouth, MYSTERY_DUNGEON_NORTH_SOUTH, $61, 0
	map_attributes MysteryDungeonEastWest, MYSTERY_DUNGEON_EAST_WEST, $61, 0

	map_attributes MysteryDungeonNorthEast, MYSTERY_DUNGEON_NORTH_EAST, $61, 0
	map_attributes MysteryDungeonNorthWest, MYSTERY_DUNGEON_NORTH_WEST, $61, 0
	map_attributes MysteryDungeonSouthEast, MYSTERY_DUNGEON_SOUTH_EAST, $61, 0
	map_attributes MysteryDungeonSouthWest, MYSTERY_DUNGEON_SOUTH_WEST, $61, 0

	map_attributes MysteryDungeonNorth, MYSTERY_DUNGEON_NORTH, $61, 0
	map_attributes MysteryDungeonSouth, MYSTERY_DUNGEON_SOUTH, $61, 0
	map_attributes MysteryDungeonEast, MYSTERY_DUNGEON_EAST, $61, 0
	map_attributes MysteryDungeonWest, MYSTERY_DUNGEON_WEST, $61, 0
