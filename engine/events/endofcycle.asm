eoccall: MACRO
    cp \1
    jr nz, .Not\2
    ld a, BANK(\2)
    ld hl, \2
    jp .callscript
.Not\2
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
	playmusic MUSIC_NONE
	opentext
	writetext .FirstDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.FirstDaytext
	text_jump FirstDayText
	db "@"
	
SecondDayScript:
	playmusic MUSIC_NONE
	opentext
	writetext .SecondDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.SecondDaytext
	text_jump SecondDayText
	db "@"
	
ThirdDayScript:
	playmusic MUSIC_NONE
	opentext
	writetext .ThirdDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.ThirdDaytext
	text_jump ThirdDayText
	db "@"
	
FourthDayScript:
	playmusic MUSIC_NONE
	opentext
	writetext .FourthDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.FourthDaytext
	text_jump FourthDayText
	db "@"
	
FifthDayScript:
	playmusic MUSIC_NONE
	opentext
	writetext .FifthDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.FifthDaytext
	text_jump FifthDayText
	db "@"
	
SixthDayScript:
	playmusic MUSIC_NONE
	opentext
	writetext .SixthDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.SixthDaytext
	text_jump SixthDayText
	db "@"

SeventhDayScript:
	playmusic MUSIC_NONE
	opentext
	writetext .SeventhDaytext
	waitbutton
	closetext
	special RestartMapMusic
	end
.SeventhDaytext
	text_jump SeventhDayText
	db "@"
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
ResetTheGame:
	farcall Reset
	ret
Delay5s:
	ld a, 255
	call DelayFrames
	ret
