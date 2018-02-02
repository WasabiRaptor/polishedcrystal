ScaryCave1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 33, 31, URAGA_CHANNEL_EAST, 1
	warp_event 11, 31, URAGA_CHANNEL_WEST, 1
	warp_event 20, 30, SCARY_CAVE_B1F, 1
	warp_event 34, 10, SCARY_CAVE_B1F, 2
	warp_event 9, 1, SCARY_CAVE_SHIPWRECK, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 34, 3, SIGNPOST_ITEM + MAX_ELIXER, EVENT_SCARY_CAVE_1F_HIDDEN_MAX_ELIXIR
	bg_event 18, 28, SIGNPOST_ITEM + PEARL_STRING, EVENT_SCARY_CAVE_1F_HIDDEN_PEARL_STRING
	bg_event 30, 29, SIGNPOST_ITEM + PEARL, EVENT_SCARY_CAVE_1F_HIDDEN_PEARL

	db 13 ; object events
	object_event 15, 5, SPRITE_MIRA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ScaryCave1FMiraScript, EVENT_SCARY_CAVE_MIRA
	object_event 8, 24, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, ScaryCave1FPharmacistScript, -1
	object_event 36, 2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerRuin_maniacSmilte, -1
	object_event 8, 18, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 1, TrainerSuper_nerdMako, -1
	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerCoupleJoeandjo1, -1
	object_event 23, 20, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerCoupleJoeandjo2, -1
	object_event 37, 16, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerHex_maniacBethany, -1
	object_event 36, 29, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 0, TrainerScientistPiotr, -1
	itemball_event 27, 7, X_SPCL_DEF, 1, EVENT_SCARY_CAVE_1F_X_SPCL_DEF
	itemball_event 4, 9, DUSK_STONE, 1, EVENT_SCARY_CAVE_1F_DUSK_STONE
	itemball_event 33, 19, HYPER_POTION, 1, EVENT_SCARY_CAVE_1F_HYPER_POTION
	itemball_event 28, 23, MAX_REPEL, 1, EVENT_SCARY_CAVE_1F_MAX_REPEL
	itemball_event 3, 29, REVIVE, 1, EVENT_SCARY_CAVE_1F_REVIVE

	const_def 1 ; object constants
	const SCARYCAVE1F_MIRA

ScaryCave1FMiraScript:
	faceplayer
	checkevent EVENT_BEAT_MIRA
	iftrue .Beaten
	opentext
	writetext .ChallengeText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked SCARYCAVE1F_MIRA
	loadtrainer MIRA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MIRA
.Beaten
	opentext
	writetext .ItemText
	buttonsound
	verbosegiveitem POWER_LENS
	iffalse_endtext
	writetext .GoodbyeText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear SCARYCAVE1F_MIRA
	pause 15
	special Special_FadeInQuickly
	clearevent EVENT_BATTLE_TOWER_MIRA
	end

.ChallengeText:
	text "I'm Mira…"
	line "I was catching"

	para "#mon, but this"
	line "cave is too scary…"

	para "I want to get"
	line "tougher so I won't"
	cont "be such a scaredy-"
	cont "cat."

	para "Please! Please"
	line "battle with me!"
	done

.YesText:
	text "Yes! Mira will"
	line "show you her #-"
	cont "mon!"
	done

.NoText:
	text "Mira is sad…"
	done

.BeatenText:
	text "Mira wants to get"
	line "a lot, lot strong-"
	cont "er, like <PLAYER>!"
	done

.ItemText:
	text "<PLAYER>, did you"
	line "get to be so good"

	para "because you're al-"
	line "ways with your"
	cont "#mon?"

	para "Yes! That has to"
	line "be it!"

	para "Mira is beginning"
	line "to understand!"

	para "Thank you,"
	line "<PLAYER>!"

	para "Mira wants you to"
	line "have this!"
	done

.GoodbyeText:
	text "Mira will try like"
	line "you, <PLAYER>!"

	para "I'll get stronger"
	line "at the Battle"
	cont "Tower!"

	para "<PLAYER>,"
	line "bye-bye!"
	done

ScaryCave1FPharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
	iftrue .HeardIntro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
.HeardIntro:
	writetext .QuestionText
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	yesorno
	iffalse .TutorRefused
	writebyte SUCKER_PUNCH
	writetext .ClearText
	special Special_MoveTutor
	if_equal $0, .TeachMove
.TutorRefused
	thisopenedtext

	text "It's your funeral."
	done

.IntroText:
	text "Ghosts are masters"
	line "of the cheap shot."

	para "The way to deal"
	line "with them is to"
	cont "hit them first!"

	para "Give 'em a good"
	line "surprise Sucker"
	cont "Punch!"
	done

.QuestionText:
	text "I'll teach you to"
	line "Sucker Punch, but"

	para "I want a Silver"
	line "Leaf."
	done

.ClearText:
	text ""
	done

.NoSilverLeaf
	waitbutton
	thisopenedtext

	text "No Silver Leaf?"
	line "Forget it then."
	done

.TeachMove
	takeitem SILVER_LEAF
	thisopenedtext

	text "Now you can use"
	line "Sucker Punch!"

	para "If a foe is about"
	line "to hit you, you"
	cont "hit them first!"
	done

TrainerRuin_maniacSmilte:
	trainer RUIN_MANIAC, SMILTE, EVENT_BEAT_RUIN_MANIAC_SMILTE, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	jumptextfaceplayer .AfterText

.SeenText:
	text "I'm on the edge of"
	line "a big discovery!"

	para "I can just feel"
	line "it!"
	done

.BeatenText:
	text "Are you after my"
	line "discovery?!"
	done

.AfterText:
	text "I hear an echo."
	line "There's a deeper"
	cont "cave nearby!"

	para "I wonder if that"
	line "is where I'll find"
	cont "my big discovery…"
	done

TrainerSuper_nerdMako:
	trainer SUPER_NERD, MAKO, EVENT_BEAT_SUPER_NERD_MAKO, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	jumptextfaceplayer .AfterText

.SeenText:
	text "You can't beat me!"
	line "I've got the per-"
	cont "fect plan!"
	done

.BeatenText:
	text "My plan failed?!"

	para "Back to the draw-"
	line "ing board…"
	done

.AfterText:
	text "I guess even the"
	line "best-laid plans"
	cont "can be ruined."
	done

TrainerCoupleJoeandjo1:
	trainer COUPLE, JOEANDJO1, EVENT_BEAT_COUPLE_JOE_AND_JO, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	jumptextfaceplayer .AfterText

.SeenText:
	text "Joe: A ghost!"
	line "Stay close, my"
	cont "dear Jo!"
	done

.BeatenText:
	text "Joe: Oh. It was"
	line "just a trainer."
	done

.AfterText:
	text "Joe: We're on a"
	line "ghost hunt, but"

	para "I'm not scared as"
	line "long as I have my"
	cont "Jo beside me!"
	done

TrainerCoupleJoeandjo2:
	trainer COUPLE, JOEANDJO2, EVENT_BEAT_COUPLE_JOE_AND_JO, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	jumptextfaceplayer .AfterText

.SeenText:
	text "Jo: Eek! Hold me"
	line "tight, Joe!"
	done

.BeatenText:
	text "Jo: Aren't you"
	line "scared?"
	done

.AfterText:
	text "Jo: I'm so lucky"
	line "to have my wonder-"
	cont "ful Joe to ward"

	para "off any creepy"
	line "ghosts."
	done

TrainerHex_maniacBethany:
	trainer HEX_MANIAC, BETHANY, EVENT_BEAT_HEX_MANIAC_BETHANY, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	jumptextfaceplayer .AfterText

.SeenText:
	text "BOO!"
	done

.BeatenText:
	text "Did I scare you?"
	done

.AfterText:
	text "The aura of fear"
	line "in this cave is"
	cont "delightful…"
	cont "Fufufufu…"
	done

TrainerScientistPiotr:
	trainer SCIENTIST, PIOTR, EVENT_BEAT_SCIENTIST_PIOTR, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	jumptextfaceplayer .AfterText

.SeenText:
	text "Do you know why"
	line "the water here is"
	cont "blood-red?"
	done

.BeatenText:
	text "Fine, I'll tell"
	line "you!"
	done

.AfterText:
	text "Algae grow here"
	line "and release a red"

	para "pigment in the"
	line "water."

	para "It's not blood!"
	line "…Right?"
	done
