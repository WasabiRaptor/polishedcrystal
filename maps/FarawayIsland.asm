const_value set 2
	const FARAWAYISLAND_SAILOR
	const FARAWAYISLAND_LAWRENCE

FarawayIsland_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw .Trigger0, 0
	dw .Trigger1, 0

.MapCallbacks:
	db 1

	; callbacks

	dbw MAPCALLBACK_SPRITES, .SetupLawrence

.Trigger0:
	end

.Trigger1:
	priorityjump FarawayIsland_PlayerArrives
	end

.SetupLawrence:
	disappear FARAWAYISLAND_LAWRENCE
	checkevent EVENT_FARAWAY_JUNGLE_MEW
	iffalse .Done
	checkevent EVENT_BEAT_LAWRENCE
	iftrue .Done
	appear FARAWAYISLAND_LAWRENCE
.Done
	return

FarawayIsland_PlayerArrives:
	applymovement FARAWAYISLAND_SAILOR, FarawayIslandSailorArrive1MovementData
	applymovement PLAYER, FarawayIslandPlayerArriveMovementData
	opentext
	writetext SeagallopFerryFarawayIslandRefusedText
	waitbutton
	closetext
	applymovement FARAWAYISLAND_SAILOR, FarawayIslandSailorArrive2MovementData
	dotrigger $0
	end

FarawayIslandSailorScript:
	faceplayer
	opentext
	writetext SeagallopFerryFarawayToVermilionQuestionText
	yesorno
	iffalse .RefuseFerry
	writetext SeagallopFerryFarawayToVermilionText
	waitbutton
	closetext
	spriteface FARAWAYISLAND_SAILOR, DOWN
	pause 10
	applymovement FARAWAYISLAND_SAILOR, FarawayIslandSailorDepartMovementData
	playsound SFX_EXIT_BUILDING
	disappear FARAWAYISLAND_SAILOR
	waitsfx
	applymovement PLAYER, FarawayIslandPlayerDepartMovementData
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	appear FARAWAYISLAND_SAILOR
	domaptrigger SEAGALLOP_FERRY_VERMILION_GATE, $1
	warp SEAGALLOP_FERRY_VERMILION_GATE, $6, $5
	end

.RefuseFerry
	writetext SeagallopFerryFarawayIslandRefusedText
	waitbutton
	closetext
	end

FarawayIslandLawrenceScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_ZINNIA_ENCOUNTER_ORAS
	faceplayer
	opentext
	writetext FarawayIslandLawrenceText1
	waitbutton
	closetext
	winlosstext FarawayIslandLawrenceBeatenText, 0
	setlasttalked FARAWAYISLAND_LAWRENCE
	loadtrainer LAWRENCE, 2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ZINNIA_ENCOUNTER_ORAS
	opentext
	writetext FarawayIslandLawrenceText2
	waitbutton
	closetext
	pause 15
	playsound SFX_WARP_TO
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear FARAWAYISLAND_LAWRENCE
	waitsfx
	special Special_FadeInQuickly
	setevent EVENT_BEAT_LAWRENCE
	setevent EVENT_LAWRENCE_FARAWAY_ISLAND
	playmapmusic
	end

FarawayIslandSign:
	jumptext FarawayIslandSignText

FarawayIslandSailorDepartMovementData:
	turn_head_down
	step_end

FarawayIslandPlayerDepartMovementData:
	step_down
	step_end

FarawayIslandPlayerArriveMovementData:
	step_up
	step_up
	turn_head_down
	step_end

FarawayIslandSailorArrive1MovementData:
	step_up
	step_left
	turn_head_right
	step_end

FarawayIslandSailorArrive2MovementData:
	step_right
	step_down
	turn_head_up
	step_end

SeagallopFerryFarawayToVermilionQuestionText:
	text "Ready to head back"
	line "to Vermilion City?"
	done

SeagallopFerryFarawayToVermilionText:
	text "All right!"

	para "All aboard the"
	line "Seagallop Ferry!"
	done

SeagallopFerryFarawayIslandRefusedText:
	text "I'll be waiting"
	line "right here."
	done

FarawayIslandLawrenceText1:
	text "Lawrence: "
	done

FarawayIslandLawrenceBeatenText:
	text ""
	done

FarawayIslandLawrenceText2:
	text "Lawrence: "
	done

FarawayIslandSignText:
	text "The writing is"
	line "fading as if it"

	para "was written a long"
	line "time ago…"

	para "<``>…ber, 6th day"

	para "If any human…sets"
	line "foot here…"
	cont "again…et it be a"
	cont "kindhearted pers…"

	para "…ith that hope,"
	line "I depar…"

	para "…ji<''>"
	done

FarawayIsland_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $8, $16, 1, FARAWAY_JUNGLE
	warp_def $8, $17, 2, FARAWAY_JUNGLE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 34, 4, SIGNPOST_READ, FarawayIslandSign

.PersonEvents:
	db 2
	person_event SPRITE_SAILOR, 42, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FarawayIslandSailorScript, EVENT_OLIVINE_PORT_SAILOR_AT_GANGWAY
	person_event SPRITE_LAWRENCE, 37, 3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FarawayIslandLawrenceScript, EVENT_LAWRENCE_FARAWAY_ISLAND
