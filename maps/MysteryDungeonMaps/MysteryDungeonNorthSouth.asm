	const_def 2 ; object constants

MysteryDungeonNorthSouth_MapScriptHeader:
	db 2 ; scene scripts
	scene_script MysteryDungeonDummyScene0 ; SCENE_DEFAULT
	scene_script MysteryDungeonDummyScene0 ; SCENE_FINISHED

	db 0 ; callbacks

	db 8 ; warp events
	;north warps
	warp_event  4, 1, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1
	warp_event  5, 0, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1

	;south warps
	warp_event  4, 9, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1
	warp_event  5, 9, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1

	;east warps
	warp_event  9, 4, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1
	warp_event  9, 5, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1

	;west warps
	warp_event  0, 4, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1
	warp_event  0, 5, MYSTERY_DUNGEON_NORTH_SOUTH_EAST_WEST, -1

	db 16 ; coord events
		;upon entry from other room

		coord_event  4,  2, SCENE_FINISHED, DungeonStepFromNorth 

		;it seems only the north one is working, since you walk out of the cave onto the tile, but the other warps don't trigger the script, but that also means that they don't trigger the inc or dec script, which may lead to some inconsistency if someone went back into the door they came out of without stepping further into the room

		coord_event  5,  1, SCENE_FINISHED, DungeonStepFromNorth

		coord_event  4,  8, SCENE_FINISHED, DungeonStepFromSouth
		coord_event  5,  9, SCENE_FINISHED, DungeonStepFromSouth

		coord_event  8,  4, SCENE_FINISHED, DungeonStepFromEast
		coord_event  8,  5, SCENE_FINISHED, DungeonStepFromEast

		coord_event  1,  4, SCENE_FINISHED, DungeonStepFromWest
		coord_event  1,  5, SCENE_FINISHED, DungeonStepFromWest

		;warps
	
		coord_event  4,  2, SCENE_DEFAULT, DungeonWarpNorth
		coord_event  5,  1, SCENE_DEFAULT, DungeonWarpNorth

		coord_event  4,  8, SCENE_DEFAULT, DungeonWarpSouth
		coord_event  5,  8, SCENE_DEFAULT, DungeonWarpSouth

		coord_event  8,  4, SCENE_DEFAULT, DungeonWarpEast
		coord_event  8,  5, SCENE_DEFAULT, DungeonWarpEast

		coord_event  1,  4, SCENE_DEFAULT, DungeonWarpWest
		coord_event  1,  5, SCENE_DEFAULT, DungeonWarpWest

	db 0 ; bg events

	db 0 ; object events
