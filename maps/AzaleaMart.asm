AzaleaMart_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 2, 7, AZALEA_TOWN, 3
	warp_event 3, 7, AZALEA_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	mart_clerk_event 1, 3, MARTTYPE_STANDARD, MART_AZALEA
	object_event 2, 5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaMartCooltrainermText, -1
	object_event 7, 2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaMartBugCatcherText, -1
	object_event 8, 6, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << MORN) | (1 << DAY), (1 << 3) | PAL_OW_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaMartLadyText, -1
	object_event 8, 6, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, (1 << NITE), (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, AzaleaMartRockerText, -1

AzaleaMartCooltrainermText:
	text "There's no Great"
	line "Ball here. #"

	para "Balls will have"
	line "to do."

	para "I wish Kurt would"
	line "make me some of"
	cont "his custom Balls."
	done

AzaleaMartBugCatcherText:
	text "A Great Ball is"
	line "better for catch-"
	cont "ing #mon than a"
	cont "# Ball."

	para "But Kurt's might"
	line "be better some-"
	cont "times."
	done

AzaleaMartLadyText:
	text "I can buy many"
	line "items at home in"
	cont "Goldenrod City,"

	para "but for boosting"
	line "Fire-type moves,"

	para "nothing beats"
	line "Azalea's Charcoal!"
	done

AzaleaMartRockerText:
	text "The prototype"
	line "versions of"

	para "Kurt's balls had"
	line "some problems."

	para "Love Balls used"
	line "to catch same-"
	cont "gender #mon,"

	para "and Fast Balls"
	line "only worked for"

	para "three different"
	line "#mon species."

	para "Thank goodness"
	line "those problems"
	cont "were fixed!"
	done
