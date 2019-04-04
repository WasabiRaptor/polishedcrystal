	const_def 2 ; object constants
	const TEMP_MYSTERY_DUNGEON_NPC
	const TEMP_BUGSY

Town1_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  3,  3, KRISS_HOUSE_1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 7, 6, SPRITE_KRIS,  SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, MysteryDungeonEnterScript, -1
	object_event 7, 7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 3, TrainerYoungsterJoey, -1

MysteryDungeonEnterScript:
	opentext
	givepoke VAPOREON, 10
	closetext
	end
	callasm MysteryDungeonSetup
	special WarpToSpawnPoint
	newloadmap MAPSETUP_TELEPORT
	writecode VAR_MOVEMENT, PLAYER_NORMAL
	end
MysteryDungeonSetup:
	ld a, 5
	;ld [wMysteryDungeonX], a
	;ld [wMysteryDungeonY], a
	ld a, 8
	call RandomRange
	add 8
	;ld [wMysteryDungeonSeed], a
	ld a, SPAWN_MYSTERY_DUNGEON
	ld [wDefaultSpawnpoint], a
	ret

; TEMP
TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoey1SeenText, YoungsterJoey1BeatenText, 0, .Script
.Script:
	end

YoungsterJoey1SeenText:
	text "I just lost, so"
	line "I'm trying to find"
	cont "more #mon."

	para "Wait! You look"
	line "weak! Come on,"
	cont "let's battle!"
	done

YoungsterJoey1BeatenText:
	text "Ack! I lost again!"
	line "Doggone it!"
	done

YoungsterJoey1AfterText:
	text "Do I have to have"
	line "more #mon in"

	para "order to battle"
	line "better?"

	para "No! I'm sticking"
	line "with this one no"
	cont "matter what!"
	done
