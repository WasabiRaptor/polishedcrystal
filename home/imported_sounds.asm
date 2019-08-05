PlayImportedSoundPCM::
	ld a, [hROMBank]
	push af
	ld a, b
	rst Bankswitch
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	dec bc
.loop
	ld a, [hli]
	ld d, a
	
	and $c0
	srl a
	ld [rNR32], a
	sla d
	sla d
	nop
	nop
	ld a, d
	and $c0
	srl a
	ld [rNR32], a
	sla d
	sla d

	dec bc

	ld a, d
	and $c0
	srl a
	ld [rNR32], a
	sla d
	sla d
	nop
	nop
	ld a, d
	and $c0
	srl a
	ld [rNR32], a

	add b
	jr nc, .loop

	pop af
	rst Bankswitch
	ret
