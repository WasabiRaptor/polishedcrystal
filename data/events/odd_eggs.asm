GiveOddEgg:
	; Compare a random word to
	; probabilities out of 0xffff.
	call Random
	ld hl, .Probabilities
	ld c, 0
	ld b, c
.loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a

	; Break on $ffff.
	ld a, d
	cp $ffff / $100
	jr nz, .not_done
	ld a, e
	cp $ffff % $100
	jr z, .done
.not_done

	; Break when [hRandom] <= de.
	ldh a, [hRandom + 1]
	cp d
	jr c, .done
	jr z, .ok
	jr .next
.ok
	ldh a, [hRandom + 0]
	cp e
	jr c, .done
	jr z, .done
.next
	inc bc
	jr .loop
.done

	ld hl, OddEggs
	ld a, OddEgg2 - OddEgg1
	rst AddNTimes
	jr GiveEggMon

.Probabilities:

prob: MACRO
prob_total = prob_total + (\1)
	dw prob_total * $ffff / 100
ENDM

prob_total = 0
; Pichu
	prob 6
	prob 6
; Magby
	prob 12
	prob 12
; Elekid
	prob 12
	prob 12
; Tyrogue
	prob 10
	prob 10
; Munchlax
	prob 10
	prob 10
; 1fb56e

GiveMystriEgg:
	ld hl, MystriEgg
; fallthrough
GiveEggMon:
	ld de, wOddEgg
	ld bc, PARTYMON_STRUCT_LENGTH + 2 * PKMN_NAME_LENGTH
	rst CopyBytes
; fallthrough
AddEggMonToParty:
	ld hl, wPartyCount
	ld a, [hl]
	ld e, a
	inc [hl]

	ld bc, wPartySpecies
	ld d, e
.loop1
	inc bc
	dec d
	jr nz, .loop1
	ld a, e
	ld [wCurPartyMon], a
	ld a, EGG
	ld [bc], a
	inc bc
	ld a, -1
	ld [bc], a

	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	ld [wd002], a
.loop2
	add hl, bc
	dec a
	and a
	jr nz, .loop2
	ld e, l
	ld d, h
	ld hl, wOddEgg
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes

	ld hl, wPartyMonOT
	ld bc, PLAYER_NAME_LENGTH
	ld a, [wd002]
.loop3
	add hl, bc
	dec a
	and a
	jr nz, .loop3
	ld e, l
	ld d, h
	ld hl, wOddEggName
	ld bc, PKMN_NAME_LENGTH - 1
	rst CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, wPartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	ld a, [wd002]
.loop4
	add hl, bc
	dec a
	and a
	jr nz, .loop4
	ld e, l
	ld d, h
	ld hl, wOddEggName
	ld bc, PKMN_NAME_LENGTH - 1
	rst CopyBytes
	ld a, "@"
	ld [de], a

	jp CloseSRAM


OddEggs:

OddEgg1:

OddEgg2:

MystriEgg:
