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

connection: MACRO
;\1: direction
;\2: map label
;\3: map id
;\4: x (east/west) or y (north/south)
;\5: offset?
;\6: strip length
if "\1" == "north"
	map_id \3
	dw wDecompressScratch + \3_WIDTH * (\3_HEIGHT - 3) + \5
	dw wOverworldMap + \4 + 3
	db \6
	db \3_WIDTH
	db \3_HEIGHT * 2 - 1
	db (\4 - \5) * -2
	dw wOverworldMap + \3_HEIGHT * (\3_WIDTH + 6) + 1
elif "\1" == "south"
	map_id \3
	dw wDecompressScratch + \5
	dw wOverworldMap + (CURRENT_MAP_HEIGHT + 3) * (CURRENT_MAP_WIDTH + 6) + \4 + 3
	db \6
	db \3_WIDTH
	db 0
	db (\4 - \5) * -2
	dw wOverworldMap + \3_WIDTH + 7
elif "\1" == "west"
	map_id \3
	dw wDecompressScratch + (\3_WIDTH * \5) + \3_WIDTH - 3
	dw wOverworldMap + (CURRENT_MAP_WIDTH + 6) * (\4 + 3)
	db \6
	db \3_WIDTH
	db (\4 - \5) * -2
	db \3_WIDTH * 2 - 1
	dw wOverworldMap + \3_WIDTH * 2 + 6
elif "\1" == "east"
	map_id \3
	dw wDecompressScratch + (\3_WIDTH * \5)
	dw wOverworldMap + (CURRENT_MAP_WIDTH + 6) * (\4 + 3 + 1) - 3
	db \6
	db \3_WIDTH
	db (\4 - \5) * -2
	db 0
	dw wOverworldMap + \3_WIDTH + 7
endc
ENDM


	map_attributes Town1, TOWN_1, $61, SOUTH | WEST | EAST
	connection south, RouteS, ROUTE_S, 5, 0, 10
	connection west, RouteW1, ROUTE_W_1, 9, 0, 9
	connection east, Bridge, BRIDGE, 9, 0, 9

	map_attributes Bridge, BRIDGE, $61, WEST | EAST
	connection west, Town1, TOWN_1, -3, 6, 12
	connection east, Town2, TOWN_2, 0, 0, 12

	map_attributes Town2, TOWN_2, $61, NORTH | WEST | EAST
	connection north, RouteNE1, ROUTE_NE_1, 0, 0, 13
	connection west, Bridge, BRIDGE, 0, 0, 9
	connection east, Lake2, LAKE_2, 9, 0, 12

	map_attributes RouteNE1, ROUTE_NE_1, $61, SOUTH | EAST
	connection South, Town2, TOWN_2, 0, 0, 10
	connection east, Crevasse, CREVASSE, -3, 15, 12

	map_attributes Crevasse, CREVASSE, $61, NORTH | SOUTH | WEST
	connection north, RouteNE2, ROUTE_NE_2, 10, 0, 10
	connection south, Lake3, LAKE_3, 0, 0, 30
	connection west, RouteNE1, ROUTE_NE_1, 18, 0, 9

	map_attributes RouteNE2, ROUTE_NE_2, $61, NORTH | SOUTH
	connection north, Town3, TOWN_3, -3, 2, 16
	connection south, Crevasse, CREVASSE, -3, 7, 16

	map_attributes Town3, TOWN_3, $61, SOUTH
	connection south, RouteNE2, ROUTE_NE_2, 5, 0, 10

	map_attributes RouteW1, ROUTE_W_1, $61, WEST | EAST
	connection west, RouteW2, ROUTE_W_2, -3, 6, 12
	connection east, Town1, TOWN_1, -3, 6, 12

	map_attributes RouteW2, ROUTE_W_2, $61, NORTH | EAST
	connection north, AshPlains1, ASH_PLAINS_1, -3, 7, 36
	connection east, RouteW1, ROUTE_W_1, 9, 0, 9
	
	map_attributes AshPlains1, ASH_PLAINS_1, $61, NORTH | SOUTH
	connection north, AshPlains2, ASH_PLAINS_2, 0, 0, 50
	connection south, RouteW2, ROUTE_W_2, 10, 0, 30

	map_attributes AshPlains2, ASH_PLAINS_2, $61, SOUTH | WEST
	connection south, AshPlains1, ASH_PLAINS_1, 0, 0, 50
	connection west, Town4, TOWN_4, -3, 6, 12

	map_attributes Town4, TOWN_4, $61, EAST
	connection east, AshPlains2, ASH_PLAINS_2, 9, 0, 12

	map_attributes RouteS, ROUTE_S, $61, NORTH | SOUTH
	connection north, Town1, TOWN_1, -3, 2, 16
	connection south, Swamp, SWAMP, -3, 7, 16

	map_attributes Swamp, SWAMP, $61, NORTH | SOUTH | WEST
	connection north, RouteS, ROUTE_S, 10, 0, 10
	connection south, RouteSE1, ROUTE_SE_1, 20, 0, 13
	connection west, RouteSW, ROUTE_SW, 18, 0, 9

	map_attributes RouteSW, ROUTE_SW, $61, SOUTH | EAST
	connection south, Town5, TOWN_5, -3, 7, 13
	connection east, Swamp, SWAMP, -3, 15, 9

	map_attributes Town5, TOWN_5, $61, NORTH
	connection north, RouteSW, ROUTE_SW, 10, 0, 13

	map_attributes RouteSE1, ROUTE_SE_1, $61, NORTH | EAST | SOUTH
	connection north, Swamp, SWAMP, -3, 17, 13
	connection south, RouteFakeExit, ROUTE_FAKE_EXIT, 10, 0, 10
	connection east, RouteSE2, ROUTE_SE_2, 0, 0, 9

	map_attributes RouteSE2, ROUTE_SE_2, $61, NORTH | WEST | EAST
	connection north, Lake1, LAKE_1, 10, 0, 23
	connection west, RouteSE1, ROUTE_SE_1, 0, 0, 9
	connection east, RouteSE3, ROUTE_SE_3, 0, 0, 9

	map_attributes RouteSE3, ROUTE_SE_3, $61, NORTH | WEST
	connection north, Town6, TOWN_6, 10, 0, 23
	connection west, RouteSE2, ROUTE_SE_2, 0, 0, 9

	map_attributes Town6, TOWN_6, $61, SOUTH | WEST
	connection south, RouteSE3, ROUTE_SE_3, -3, 7, 23
	connection west, Lake1, LAKE_1, -3, 15, 12

	map_attributes Lake1, LAKE_1, $61, NORTH | SOUTH | EAST
	connection north, Lake2, LAKE_2, 0, 0, 33
	connection south, RouteSE2, ROUTE_SE_2, -3, 7, 23
	connection east, Town6, TOWN_6, 18, 0, 9

	map_attributes Lake2, LAKE_2, $61, NORTH | SOUTH | WEST
	connection north, Lake3, LAKE_3, 10, 0, 30
	connection south, Lake1, LAKE_1, 0, 0, 30
	connection west, Town2, TOWN_2, -3, 6, 12

	map_attributes Lake3, LAKE_3, $61, NORTH | SOUTH 
	connection north, Crevasse, CREVASSE, 0, 0, 30
	connection south, Lake2, LAKE_2, -3, 7, 33

	map_attributes RouteFakeExit, ROUTE_FAKE_EXIT, $61, NORTH | SOUTH 
	connection north, RouteSE1, ROUTE_SE_1, -3, 7, 13
	connection south, RouteFakeExitLoop, ROUTE_FAKE_EXIT_LOOP, 0, 0, 10

	map_attributes RouteFakeExitLoop, ROUTE_FAKE_EXIT_LOOP, $61, NORTH | SOUTH 
	connection north, RouteFakeExit, ROUTE_FAKE_EXIT, 0, 0, 10
	connection south, RouteFakeExitLoop, ROUTE_FAKE_EXIT_LOOP, 0, 0, 10


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
