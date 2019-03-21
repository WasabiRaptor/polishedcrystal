eoccall: MACRO
    cp \1
    jr nz, .Not\2
    ld a, BANK(\2)
    ld hl, \2
    jp .callscript
.Not\2
ENDM

eocscript: MACRO
    playmusic MUSIC_NONE
    opentext
    writetext ._\1DayText
    waitbutton
    closetext
    special RestartMapMusic
    end
._\1DayText
    text_jump \1DayText
    db "@"
ENDM

EndOfCycleStep::
	ld hl, wCycleProgress
	ld a, [hl]

	cp CYCLE_NO_EVENT 
	ret z
    eoccall CYCLE_ITS_RIGHT_NEAR_EVENT, 			ItsRightNearScript
    eoccall CYCLE_ITS_GETTING_CLOSER_EVENT, 		ItsGettingCloserScript
	eoccall CYCLE_SOMETHING_IS_APPROACHING_EVENT, 	SomethingIsApproachingScript
	eoccall CYCLE_SOMETHING_IS_STIRRING_EVENT, 		SomethingIsStirringScript
	eoccall CYCLE_24_HOURS_REMAIN_EVENT, 			SeventhDayScript
	eoccall CYCLE_48_HOURS_REMAIN_EVENT, 			SixthDayScript
	eoccall CYCLE_72_HOURS_REMAIN_EVENT, 			FifthDayScript
	eoccall CYCLE_96_HOURS_REMAIN_EVENT, 			FourthDayScript
	eoccall CYCLE_120_HOURS_REMAIN_EVENT, 			ThirdDayScript
	eoccall CYCLE_144_HOURS_REMAIN_EVENT, 			SecondDayScript
	eoccall CYCLE_168_HOURS_REMAIN_EVENT, 			FirstDayScript

.callscript
    call CallScript
    scf
    ld hl, wCycleProgress
    ld [hl], 0
    ret

FirstDayScript:
	eocscript First

SecondDayScript:
	eocscript Second
	
ThirdDayScript:
    eocscript Third
	
FourthDayScript:
	eocscript Fourth
	
FifthDayScript:
    eocscript Fifth
	
SixthDayScript:
    eocscript Sixth

SeventhDayScript:
    eocscript Seventh

SomethingIsStirringScript:
	playmusic MUSIC_NONE
	opentext
	writetext .SomethingIsStirringtext
	waitbutton
	closetext
	special RestartMapMusic
	end
.SomethingIsStirringtext
	text_jump SomethingIsStirringText
	db "@"
	
SomethingIsApproachingScript:
	playmusic MUSIC_NONE
	opentext
	writetext .SomethingIsApproachingtext
	waitbutton
	closetext
	special RestartMapMusic
	end
.SomethingIsApproachingtext
	text_jump SomethingIsApproachingText
	db "@"

ItsGettingCloserScript:
	playmusic MUSIC_NONE
	opentext
	writetext .ItsGettingClosertext
	waitbutton
	closetext
	special RestartMapMusic
	end
.ItsGettingClosertext
	text_jump ItsGettingCloserText
	db "@"

ItsRightNearScript:
	playmusic MUSIC_NONE
	opentext
	writetext .ItsRightNeartext
	waitbutton
	closetext
	applymovement PLAYER, .TeleportFrom
	refreshscreen
	callasm OverworldWhiteoutFade
	writetext .BoxUrPokemonRetardtext
	waitbutton
	special FadeOutPalettes
	callasm SaveAndReset
	endall
.ItsRightNeartext
	text_jump ItsRightNearText
	db "@"
.BoxUrPokemonRetardtext
	text_jump EndOfCycleText
	db "@"
.TeleportFrom:
	teleport_from
	step_end
