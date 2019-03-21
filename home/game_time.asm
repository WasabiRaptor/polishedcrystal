; reset the number of hours the game has been played
; (not to be confused with the real-time clock, which either continues to
; increment when the GameBoy is switched off, or in the no-RTC patch, runs
; at 6x speed while the game time remains real-time)
ResetGameTime:: ; 208a
	xor a
	ld [wGameTimeCap], a
	ld [wGameTimeHours], a
	ld [wGameTimeHours + 1], a
	ld [wGameTimeMinutes], a
	ld [wGameTimeSeconds], a
	ld [wGameTimeFrames], a
	ret
; 209e


GameTimer:: ; 209e
	nop

	ldh a, [rSVBK]
	push af
	ld a, 1
	ldh [rSVBK], a

	call UpdateGameTimer

	pop af
	ldh [rSVBK], a
	ret
; 20ad


UpdateGameTimer:: ; 20ad
; Increment the game timer by one frame.
; The game timer is capped at 999:59:59.00.


; Don't update if game logic is paused.
	ld a, [wGameLogicPaused]
	and a
	ret nz

; Is the timer paused?
	ld hl, wGameTimerPause
	bit 0, [hl]
	ret z

; Is the timer already capped?
	ld hl, wGameTimeCap
	bit 0, [hl]
	ret nz


; +1 frame
	ld hl, wGameTimeFrames
	ld a, [hl]
	inc a

	cp 60 ; frames/second
	jr nc, .second

	ld [hl], a
	ret

.second
	xor a
	ld [hl], a

; kroc - no-RTC patch
; the game timer has increased by 1 second; increase the "fake" RTC by 6 seconds
; (24 in-game hours will pass in 4 real-world hours)
; this does not affect the rate of the "hours played", which remains real-time

	call UpdateNoRTC

; +1 second
	ld hl, wGameTimeSeconds
	ld a, [hl]
	inc a

	cp 60 ; seconds/minute
	jr nc, .minute

	ld [hl], a
	ret

.minute
	xor a
	ld [hl], a

; +1 minute
	ld hl, wGameTimeMinutes
	ld a, [hl]
	inc a

	cp 60 ; minutes/hour
	jr nc, .hour

	ld [hl], a
	ret

.hour
	xor a
	ld [hl], a

; +1 hour
	ld a, [wGameTimeHours]
	ld h, a
	ld a, [wGameTimeHours + 1]
	ld l, a
	inc hl

; Cap the timer after 1000 hours.
	ld a, h
	cp 1000 / $100
	jr c, .ok

	ld a, l
	cp 1000 % $100
	jr c, .ok

	ld hl, wGameTimeCap
	set 0, [hl]

	ld a, 59 ; 999:59:59.00
	ld [wGameTimeMinutes], a
	ld [wGameTimeSeconds], a
	ret

.ok
	ld a, h
	ld [wGameTimeHours], a
	ld a, l
	ld [wGameTimeHours + 1], a
	ret
; 210f

;; add a second to the no-RTC fake real-time clock
UpdateNoRTC::
	ld hl, hMinutes
	ld a, [hl]
	inc a
	;just add some more 'inc a' here if you need to speed up the clock for testing purposes but make sure its a factor of 60

	cp 60 ;seconds/ingame hour
	jr nc, .ingameHour
	ld [hl], a
	ret

.ingameHour
	xor a
	ld [hl], a

	ld hl, hHours
	ld a, [hl]
	inc a

	cp 24 ;minutes/ingame day
	jr nc, .ingameDay
	ld [hl], a

	;check some time based things hopefully, this might be where the issues are
	ld a, [wCurDay]
	cp SATURDAY 
	ret nz

	ld hl, hHours
	ld a, [hl]
	cp 18
	ld b, CYCLE_SOMETHING_IS_STIRRING_EVENT
	jr z, .updatecycleprogress

	cp 12
	ld b, CYCLE_SOMETHING_IS_APPROACHING_EVENT
	jr z, .updatecycleprogress

	cp 6
	ld b, CYCLE_ITS_GETTING_CLOSER_EVENT
	jr z, .updatecycleprogress
	ret

.ingameDay
	xor a
	ld [hl], a

	ld a, [wCurDay]
	inc a
	ld [wCurDay], a
	cp 7 ;use weekdays in allcaps or 0-6 here to test for actual days, if its 7 that means time is up
	ld b, CYCLE_ITS_RIGHT_NEAR_EVENT
	jr nc, .updatecycleprogress
	cp SUNDAY
	ld b, CYCLE_168_HOURS_REMAIN_EVENT
	jr z, .updatecycleprogress
	cp MONDAY
	ld b, CYCLE_144_HOURS_REMAIN_EVENT
	jr z, .updatecycleprogress
	cp TUESDAY
	ld b, CYCLE_120_HOURS_REMAIN_EVENT
	jr z, .updatecycleprogress
	cp WEDNESDAY
	ld b, CYCLE_96_HOURS_REMAIN_EVENT
	jr z, .updatecycleprogress
	cp THURSDAY
	ld b, CYCLE_72_HOURS_REMAIN_EVENT
	jr z, .updatecycleprogress
	cp FRIDAY
	ld b, CYCLE_48_HOURS_REMAIN_EVENT
	jr z, .updatecycleprogress
	cp SATURDAY
	ld b, CYCLE_24_HOURS_REMAIN_EVENT
	ret nz
.updatecycleprogress
	ld a, b
	ld [wCycleProgress], a
	ret
