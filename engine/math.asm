_Multiply::
; Multiply hMultiplicand (3 bytes) by hMultiplier. Result in hProduct.
; All values are big endian.

; hMultiplier is one byte.
; performs dehl * a
	ldh a, [hMultiplicand]
	ld e, a
	ldh a, [hMultiplicand + 1]
	ld h, a
	ldh a, [hMultiplicand + 2]
	ld l, a

	xor a
	ld d, a
	ldh [hProduct], a
	ldh [hProduct + 1], a
	ldh [hProduct + 2], a
	ldh [hProduct + 3], a
	ldh a, [hMultiplier]
	and a
	ret z
.loop
	rra
	jr nc, .next

	ld c, a ; store multiplier in c

	ldh a, [hProduct + 3]
	add l
	ldh [hProduct + 3], a
	ldh a, [hProduct + 2]
	adc h
	ldh [hProduct + 2], a
	ldh a, [hProduct + 1]
	adc e
	ldh [hProduct + 1], a
	ldh a, [hProduct]
	adc d
	ldh [hProduct], a

	ld a, c ; retrieve multiplier

.next
	add hl, hl
	rl e
	rl d
	and a
	jr nz, .loop
	ret

_Divide::
; Divide hDividend length b (max 4 bytes) by hDivisor. Result in hQuotient.
; All values are big endian.
	ldh a, [hDivisor]
	and a
	jr z, .div0

	ldh a, [hDivisor]
	ld d, a
	ld c, hDividend % $100
	ld e, 0
	ld l, e
.loop
	push bc
	ld b, 8
	ld a, [$ff00+c]
	ld h, a
	ld l, 0
.loop2
	sla h
	rl e
	ld a, e
	jr c, .carry
	cp d
	jr c, .skip
.carry
	sub d
	ld e, a
	inc l
.skip
	ld a, b
	cp 1
	jr z, .done
	sla l
	dec b
	jr .loop2
.done
	ld a, c
	add hMathBuffer - hDividend
	ld c, a
	ld a, l
	ld [$ff00+c], a
	pop bc
	inc c
	dec b
	jr nz, .loop

	xor a
	ldh [hDividend], a
	ldh [hDividend + 1], a
	ldh [hDividend + 2], a
	ldh [hDividend + 3], a
	ld a, e
	ldh [hRemainder], a
	ld a, c
	sub hDividend % $100
	ld b, a
	ld a, c
	add hMathBuffer - hDividend - 1
	ld c, a
	ld a, [$ff00+c]
	ldh [hDividend + 3], a
	dec b
	ret z
	dec c
	ld a, [$ff00+c]
	ldh [hDividend + 2], a
	dec b
	ret z
	dec c
	ld a, [$ff00+c]
	ldh [hDividend + 1], a
	dec b
	ret z
	dec c
	ld a, [$ff00+c]
	ldh [hDividend], a
	ret
.div0
	; deliberately crash the game (maybe make a real crash handler?)
	rst 0

; Calculates average level of party
; 
CalculatePartyAverage::
	push bc
	push de
	push hl
; ISSOtm optimized party average
	ld a, [wPartyCount]
	ld b, a	; b = partyCount
	ld hl, wPartyMon1Level
	ld de, PARTYMON_STRUCT_LENGTH
	xor a
	ld c, a	; c = 0
.loop
	add a, [hl]
	jr nc, .noCarry
	inc c
.noCarry
	add hl, de
	dec b	; partyCount--
	jr nz, .loop
	ldh [hDividend + 1], a
	ld a, c
	ldh [hDividend + 0], a
	ld a, [wPartyCount]
	inc a
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 2]
	pop hl
	pop de
	pop bc
	ret
