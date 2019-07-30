WaitForSoundToFinish::
	ld a, [wLowHealthAlarm]
	and $80
	ret nz
	push hl
.waitLoop
	ld hl, wChannel5
	xor a
	or [hl]
	inc hl
	or [hl]
	inc hl
	inc hl
	or [hl]
	and a
	jr nz, .waitLoop
	pop hl
	ret

PlayImportedSoundPCM::
	ld a, [hROMBank]
	push af
	ld a, b
	rst Bankswitch
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
.loop
	ld a, [hli]
	ld d, a
	ld a, $3
.playSingleSample
	dec a
	jr nz, .playSingleSample

	rept 7
	call LoadNextSoundClipSample
	call PlaySoundClipSample
	endr

	call LoadNextSoundClipSample
	dec bc
	ld a, c
	or b
	jr nz, .loop
	pop af
	rst Bankswitch
	ret

LoadNextSoundClipSample::
	ld a, d
	and $80
	srl a
	srl a
	ld [rNR32], a
	sla d
	ret

PlaySoundClipSample::
	ld a, $3
.loop
	dec a
	jr nz, .loop
	ret
