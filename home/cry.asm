PlayStereoCry::
	call PlayStereoCry2
	jp WaitSFX

PlayStereoCry2::
; Don't wait for the cry to end.
; Used during pic animations.
	push af
	ld a, 1
	ld [wStereoPanningMask], a
	pop af
	jp _PlayCry

PlayFaintingCry::
	call PlayFaintingCry2
	jp WaitSFX

PlayFaintingCry2::
	push hl
	push de
	push bc

	call LoadCryHeader
	jr c, .ded
	ld hl, wCryPitch
	ld a, 90 percent
	call .Multiply
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 1]
	ld [hli], a

	ld a, 11 percent
	call .Multiply
	ldh a, [hProduct + 2]
	add [hl]
	ld [hli], a
	ldh a, [hProduct + 1]
	adc [hl]
	ld [hl], a

	farcall _PlayCryHeader
	jr PlayCry_PopBCDEHLOff

.ded
	ld e, 1
	call PlayDEDCry
	jr PlayCry_PopBCDEHLOff

.Multiply
	ldh [hMultiplier], a
	ld a, [hli]
	ldh [hMultiplicand + 2], a
	ld a, [hld]
	ldh [hMultiplicand + 1], a
	xor a
	ldh [hMultiplicand], a
	ldh [hProduct], a
	jp Multiply

PlayCry::
	call PlayCry2
	jp WaitSFX

PlayCry2::
; Don't wait for the cry to end.
	push af
	xor a
	ld [wStereoPanningMask], a
	ld [wCryTracks], a
	pop af

_PlayCry::
	push hl
	push de
	push bc

	call GetCryIndex
	call nc, PlayCryHeader
PlayCry_PopBCDEHLOff:
	pop bc
	pop de
	pop hl
	ret
	
LoadCryHeader::

	call GetCryIndex
	ret c

	ld a, [hROMBank]
	push af
	ld a, d
	rst Bankswitch

.Function:
	ld a, [hli]
	cp $ff
	jr z, .ded
	ld d, 0
	ld e, a

	ld a, [hli]
	ld [wCryPitch], a
	ld a, [hli]
	ld [wCryPitch + 1], a
	ld a, [hli]
	ld [wCryLength], a
	ld a, [hl]
	ld [wCryLength + 1], a
	
	pop af
	rst Bankswitch
	and a
	ret

.ded
	call LoadDEDCryHeader
	scf
	ret


GetCryIndex::
	ld [wCurSpecies], a
	and a
	jr z, .no
	cp EGG
	jr z, .no
	cp NUM_POKEMON + 1
	jr nc, .no

	call GetRelevantCryPointers
	dec a
	ld bc, 5
	rst AddNTimes
	and a
	ret

.no
	scf
	ret
