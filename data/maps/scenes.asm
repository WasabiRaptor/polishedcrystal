scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapTriggers::
	scene_var POKECENTER_2F,                               wPokeCenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var KRISS_HOUSE_1F,                              wPlayersHouse1FSceneID

	scene_var MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST,	   wMysteryDungeonNorthSouthEastWestSceneID

	scene_var MYSTERY_DUNGEON_NORTH_SOUTH_EAST,	   		   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_NORTH_SOUTH_WEST,	  		   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_NORTH_EAST_WEST,	  		   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_SOUTH_EAST_WEST,	   		   wMysteryDungeonNorthSouthEastWestSceneID

	scene_var MYSTERY_DUNGEON_NORTH_SOUTH,	   			   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_EAST_WEST,	   			   wMysteryDungeonNorthSouthEastWestSceneID

	scene_var MYSTERY_DUNGEON_NORTH_EAST,	   			   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_NORTH_WEST,	   			   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_SOUTH_EAST,	   			   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_SOUTH_WEST,	  			   wMysteryDungeonNorthSouthEastWestSceneID

	scene_var MYSTERY_DUNGEON_NORTH,	   				   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_SOUTH,	   				   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_EAST,	   					   wMysteryDungeonNorthSouthEastWestSceneID
	scene_var MYSTERY_DUNGEON_WEST,	   					   wMysteryDungeonNorthSouthEastWestSceneID
	db -1
