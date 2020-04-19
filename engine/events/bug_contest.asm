
ContestDropOffMons: ; 13a12
	ld hl, wPartyMon1HP
	ld a, [hli]
	or [hl]
	jr z, .fainted
; Mask the rest of your party by setting the count to 1...
	ld hl, wPartyCount
	ld a, 1
	ld [hli], a
	inc hl
; ... backing up the second mon index somewhere...
	ld a, [hl]
	ld [wBugContestSecondPartySpecies], a
; ... and replacing it with the terminator byte
	ld [hl], $ff
	xor a
	ld [wScriptVar], a
	ret

.fainted
	ld a, $1
	ld [wScriptVar], a
	ret
; 13a31

ContestReturnMons: ; 13a31
; Restore the species of the second mon.
	ld hl, wPartySpecies + 1
	ld a, [wBugContestSecondPartySpecies]
	ld [hl], a
; Restore the party count, which must be recomputed.
	ld b, $1
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	inc b
	jr .loop

.done
	ld a, b
	ld [wPartyCount], a
	ret
; 13a47

Special_GiveParkBalls: ; 135db
	xor a
	ld [wContestMon], a
	ld a, 20
	ld [wParkBallsRemaining], a
	farjp StartBugContestTimer


BugCatchingContestBattleScript:: ; 0x135eb
	writecode VAR_BATTLETYPE, BATTLETYPE_CONTEST
	randomwildmon
	startbattle
	reloadmapafterbattle
	copybytetovar wParkBallsRemaining
	iffalse .OutOfBalls
	end

.OutOfBalls: ; 0x13603
	playsound SFX_ELEVATOR_END
	opentext
	writetext .ContestIsOver
	waitbutton
	jump BugCatchingContestReturnToGateScript

.ContestIsOver: ; 0x13614
	; ANNOUNCER: The Contest is over!
	text_jump UnknownText_0x1bd2e7
	db "@"

BugCatchingContestOverScript:: ; 0x135f8
	playsound SFX_ELEVATOR_END
	opentext
	writetext .BeeepTimesUp
	waitbutton
	jump BugCatchingContestReturnToGateScript

.BeeepTimesUp: ; 0x1360f
	; ANNOUNCER: BEEEP! Time's up!
	text_jump UnknownText_0x1bd2ca
	db "@"

BugCatchingContestReturnToGateScript: ; 0x1360b
	closetext
	jumpstd bugcontestresultswarp

Script_AbortBugContest: ; 0x122c1
	checkflag ENGINE_BUG_CONTEST_TIMER
	iffalse .finish
	setflag ENGINE_DAILY_BUG_CONTEST
	special ContestReturnMons
.finish
	end


_BugContestJudging:
	ret

LoadContestantName:
	ret

INCLUDE "data/events/bug_contest_winners.asm"

BugContest_GetPlayersResult:
	ret

BugContest_JudgeContestants:
	ret

ClearContestResults:
	ret
; 1383e

DetermineContestWinners:
CopyTempContestant:
	ret

ComputeAIContestantScores:
	ret

ContestScore: ; 13900
; Determine the player's score in the Bug Catching Contest.

	xor a
	ldh [hProduct], a
	ldh [hMultiplicand], a

	ld a, [wContestMonSpecies] ; Species
	and a
	ret z

	; Tally the following:

	; Max HP * 4
	ld a, [wContestMonMaxHP + 1]
	call .AddContestStat
	ld a, [wContestMonMaxHP + 1]
	call .AddContestStat
	ld a, [wContestMonMaxHP + 1]
	call .AddContestStat
	ld a, [wContestMonMaxHP + 1]
	call .AddContestStat

	; Stats
	ld a, [wContestMonAttack  + 1]
	call .AddContestStat
	ld a, [wContestMonDefense + 1]
	call .AddContestStat
	ld a, [wContestMonSpeed   + 1]
	call .AddContestStat
	ld a, [wContestMonSpclAtk + 1]
	call .AddContestStat
	ld a, [wContestMonSpclDef + 1]
	call .AddContestStat

	; DVs (6 points per DV that's at least 8)
	lb bc, 0, 6

	ld a, [wContestMonDVs + 0]
	and $f
	cp $8
	jr c, .low_attack
	ld a, b
	add c
	ld b, a
.low_attack

	ld a, [wContestMonDVs + 0]
	swap a
	and $f
	cp $8
	jr c, .low_hp
	ld a, b
	add c
	ld b, a
.low_hp

	ld a, [wContestMonDVs + 1]
	and $f
	cp $8
	jr c, .low_speed
	ld a, b
	add c
	ld b, a
.low_speed

	ld a, [wContestMonDVs + 1]
	swap a
	and $f
	cp $8
	jr c, .low_defense
	ld a, b
	add c
	ld b, a
.low_defense

	ld a, [wContestMonDVs + 2]
	and $f
	cp $8
	jr c, .low_spcl_def
	ld a, b
	add c
	ld b, a
.low_spcl_def

	ld a, [wContestMonDVs + 2]
	swap a
	and $f
	cp $8
	jr c, .low_spcl_atk
	ld a, b
	add c
	ld b, a
.low_spcl_atk

	ld a, b
	call .AddContestStat

	; Remaining HP / 8
	ld a, [wContestMonHP + 1]
	srl a
	srl a
	srl a
	call .AddContestStat

	; Whether it's holding an item
	ld a, [wContestMonItem]
	and a
	ret z

	ld a, 1
	; fallthrough

.AddContestStat: ; 1397f
	ld hl, hMultiplicand
	add [hl]
	ld [hl], a
	ret nc
	dec hl
	inc [hl]
	ret
; 13988

Special_SelectRandomBugContestContestants: ; 139a8
	ret

Special_CheckBugContestContestantFlag: ; 139ed
	ret

INCLUDE "data/events/bug_contest_flags.asm"
