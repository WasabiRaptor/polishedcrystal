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
if DEF(DEBUG)
	ld a, [wDebugOptions]
	ld b, a
	and TIMESPEED_MASK
	cp NO_SPEED
	jr z, .done					; if NO_SPEED, finish
	cp HALF_SPEED
	jr nz, .not_half_speed		; if not HALF_SPEED, move on
	bit 2, b					; check whether half speed should tick
	jr z, .half_speed_no_tick	; if not, set it to tick next time
	res 2, b					; set tick check to 0
	push af
	ld a, b
	ld [wDebugOptions], a
	pop af
.not_half_speed
	push af
	push bc
	call UpdateNoRTC
	pop af
	pop bc
	cp DOUBLE_SPEED
	jr nz, .done				; if not DOUBLE_SPEED, finish
;.double_speed
	call UpdateNoRTC			; tick a second time, if DOUBLE_SPEED
	jr .done
.half_speed_no_tick
	set 2, b
	ld a, b
	ld [wDebugOptions], a
.done
else
	call UpdateNoRTC
endc

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

	ld a, [wHoursRemaining]
	and a
	ret z ; no more clock if we have no more hours
	dec a
	ld [wHoursRemaining], a

	ld hl, hHours
	ld a, [hl]
	inc a

	cp 24 ;minutes/ingame day
	jr nc, .ingameDay
	ld [hl], a

	ld hl, hHours
	ld a, [hl]
	ret

.ingameDay
	xor a
	ld [hl], a

	ld a, [wCurDay]
	inc a
	ld [wCurDay], a
	ret

; I'm going to overhaul how cycleprogress is handled
