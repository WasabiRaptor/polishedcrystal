PlayStereoCry:: ; 37b6
	push af
	ld a, 1
	ld [wStereoPanningMask], a
	pop af
	call _PlayCry
	jp WaitSFX
; 37c4

PlayStereoCry2:: ; 37c4
; Don't wait for the cry to end.
; Used during pic animations.
	push af
	ld a, 1
	ld [wStereoPanningMask], a
	pop af
	jr _PlayCry
; 37ce

PlayCry:: ; 37ce
	call PlayCry2
	jp WaitSFX
; 37d5

PlayCry2:: ; 37d5
; Don't wait for the cry to end.
	push af
	xor a
	ld [wStereoPanningMask], a
	ld [wCryTracks], a
	pop af
	; fallthrough

_PlayCry::
	push hl
	push de
	push bc

	call GetCryIndex
	jr c, .done

	ld e, c
	ld d, b
	call PlayCryHeader

.done
	pop bc
	pop de
	pop hl
	ret
; 37f3

LoadCryHeader:: ; 37f3
; Load cry header bc.

	call GetCryIndex
	ret c

	ldh a, [hROMBank]
	push af
	
	call GetRelevantCryPointers
	dec a
	ld c, a
	ld a, d
	rst Bankswitch

rept 5
	add hl, bc
endr
	ld a, [hli]
	cp $ff
	jr z, .ded

	ld e, a
	ld d, 0

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
; 381e
.ded
	call LoadDEDCryHeader
	pop af
	rst Bankswitch
	scf
	ret

GetCryIndex:: ; 381e
	and a
	jr z, .no
	cp NUM_POKEMON + 1
	jr nc, .no

	dec a
	ld c, a
	ld b, 0
	and a
	ret

.no
	scf
	ret
; 382d
