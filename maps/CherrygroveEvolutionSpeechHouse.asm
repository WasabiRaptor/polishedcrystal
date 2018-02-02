CherrygroveEvolutionSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 2, 7, CHERRYGROVE_CITY, 5
	warp_event 3, 7, CHERRYGROVE_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 3, 5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LassScript_0x196cb9, -1
	object_event 2, 5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x196cb2, -1

YoungsterScript_0x196cb2:
	jumptext UnknownText_0x196cc3

LassScript_0x196cb9:
	jumptext UnknownText_0x196cfc

UnknownText_0x196cc3:
	text "#mon gain expe-"
	line "rience in battle"

	para "and change their"
	line "form."
	done

UnknownText_0x196cfc:
	text "#mon change?"

	para "I would be shocked"
	line "if one did that!"
	done
