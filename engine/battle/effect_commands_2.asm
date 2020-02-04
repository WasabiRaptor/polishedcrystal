
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