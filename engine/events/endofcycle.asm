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
    writetext .\1DayText
    waitbutton
    closetext
    special RestartMapMusic
    end
.\1DayText
    text_jump \1DayText
    db "@"
ENDM

EndOfCycleStep::
	ld hl, wCycleProgress
	ld a, [hl]

	cp 0 
	ret z
    eoccall 1, ItsRightNearScript
    eoccall 2, ItsGettingCloserScript
	eoccall 3, SomethingIsApproachingScript
	eoccall 4, SomethingIsStirringScript
	eoccall 5, SeventhDayScript
	eoccall 6, SixthDayScript
	eoccall 7, FifthDayScript
	eoccall 8, FourthDayScript
	eoccall 9, ThirdDayScript
	eoccall 10, SecondDayScript
	eoccall 11, FirstDayScript

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
