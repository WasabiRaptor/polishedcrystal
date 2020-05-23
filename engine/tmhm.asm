CanLearnTMHMMove: ; 11639
	ld a, [wPutativeTMHMMove]
	and a
	jr nz, .tm_tutor

	jp GetForgottenMoves

.tm_tutor
	ld a, [wCurPartyGroup]
	ld [wCurGroup], a
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	ld a, [wCurPartyForm]
	ld [wCurForm], a
	call GetBaseData
	ld hl, wBaseTMHM
	push hl

	ld d, 0
	ld a, [wPutativeTMHMMove]
	ld c, a
	ld a, [wPutativeTMHMMove+1]
	ld b, a
	ld hl, TMHMMoves
.loop
	ld a, [hli]
	and a
	jr z, .end
	cp c
	ld a, [hli]
	jr nz, .next
	jr z, .found_tmhm
.next
	inc d
	jr .loop

.found_tmhm
	ld c, d
	pop hl
	ld b, CHECK_FLAG
	push de
	ld d, 0
	predef FlagPredef
	pop de
	ret

.end
	pop hl
	ld c, 0
	ret
; 1166a

GetTMHMMove: ; 1166a
	ld a, [wNamedObjectIndexBuffer]
	dec a ; off by one error?
	ld hl, TMHMMoves
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wNamedObjectIndexBuffer], a
	ld a, [hl]
	ld [wNamedObjectIndexBuffer+1], a
	ret
; 1167a

INCLUDE "data/moves/tmhm_moves.asm"
