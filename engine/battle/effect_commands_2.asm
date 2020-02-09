
_BattleCommand_triplekick::
; triplekick

	ld a, [wKickCounter]
	ld b, a
	inc b
	ld hl, wCurDamage + 1
	ld a, [hld]
	ld e, a
	ld a, [hli]
	ld d, a
.next_kick
	dec b
	ret z
	ld a, [hl]
	add e
	ld [hld], a
	ld a, [hl]
	adc d
	ld [hli], a

; No overflow.
	jr nc, .next_kick
	ld a, $ff
	ld [hld], a
	ld [hl], a
	ret

_BattleCommand_doubleminimizedamage::
; doubleminimizedamage

	ld hl, wEnemyMinimized
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wPlayerMinimized
.ok
	ld a, [hl]
	and a
	ret z
	ld hl, wCurDamage + 1
	sla [hl]
	dec hl
	rl [hl]
	ret nc
	ld a, $ff
	ld [hli], a
	ld [hl], a
	ret

_BattleCommand_clearhazards:: ; 37b39
; clearhazards

	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_LEECH_SEED, [hl]
	jr z, .not_leeched
	res SUBSTATUS_LEECH_SEED, [hl]
	ld hl, ShedLeechSeedText
	call StdBattleTextBox
.not_leeched
	ldh a, [hBattleTurn]
	and a
	ld hl, wPlayerScreens
	ld de, wPlayerWrapCount
	jr z, .got_screens_wrap
	ld hl, wEnemyScreens
	ld de, wEnemyWrapCount
.got_screens_wrap
	push de
	ld a, [hl]
	and SCREENS_SPIKES
	jr z, .no_spikes
	cpl
	and [hl]
	ld [hl], a
	push hl
	ld hl, BlewSpikesText
	call StdBattleTextBox
	pop hl
.no_spikes
	ld a, [hl]
	and SCREENS_TOXIC_SPIKES
	jr z, .no_toxic_spikes
	cpl
	and [hl]
	ld [hl], a
	ld hl, BlewToxicSpikesText
	call StdBattleTextBox
.no_toxic_spikes
	pop de
	ld a, [de]
	and a
	ret z
	xor a
	ld [de], a
	ld hl, ReleasedByText
	jp StdBattleTextBox

_BattleCommand_pursuit:: ; 37b1d
; pursuit
; Double damage if the opponent is switching.

	ld hl, wEnemyIsSwitching
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wPlayerIsSwitching
.ok
	ld a, [hl]
	and a
	ret z

	ld hl, wCurDamage + 1
	sla [hl]
	dec hl
	rl [hl]
	ret nc

	ld a, $ff
	ld [hli], a
	ld [hl], a
	ret

_BattleCommand_gyroball::
	push bc
	push de
	call SwitchTurn
	farcall GetSpeed
	push bc
	call SwitchTurn
	farcall GetSpeed
	pop de
	; User speed in BC, target speed in DE

	; This is counterintuitive (the logical choice is to set speed to 1),
	; but is how it's done in VII...
	ld a, b
	or c
	ld a, 1
	jr z, .got_power

	; We can't divide numbers >255, so scale down speed in that case
.scaledown_loop
	ld a, b
	and a
	jr z, .scaledown_ok
	srl b
	rr c
	srl d
	rr e
	jr .scaledown_loop
.scaledown_ok
	; Base Power = 25 * (Target Speed / User Speed), capped at 150
	xor a
	ldh [hMultiplicand + 0], a
	ld a, d
	ldh [hMultiplicand + 1], a
	ld a, e
	ldh [hMultiplicand + 2], a
	ld a, 25
	ldh [hMultiplier], a
	call Multiply

	ld a, c
	ldh [hDivisor], a
	ld b, 4
	call Divide

	; Cap at min 1, max 150
	ld hl, hMultiplicand
	ld a, [hli]
	or [hl]
	ld a, 150
	jr nz, .got_power
	inc hl
	ld a, [hl]
	and a
	jr nz, .nonzero_power
	ld a, 1
	jr .got_power

.nonzero_power
	cp 151
	jr c, .got_power

	ld a, 150
.got_power
	pop de
	ld d, a
	pop bc
	ret

_BattleCommand_happinesspower:: ; 3784b
; happinesspower
	push bc
	ld hl, wBattleMonHappiness
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemyMonHappiness
.ok
	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	ldh [hMultiplicand + 2], a
	ld a, 10
	ldh [hMultiplier], a
	call Multiply
	ld a, 25
	ldh [hDivisor], a
	ld b, 4
	call Divide
	ldh a, [hQuotient + 2]
	ld d, a
	pop bc
	ret