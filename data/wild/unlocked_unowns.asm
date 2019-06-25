
CheckUnownLetter: ; 3eb75
; Return carry if the Unown letter hasn't been unlocked yet

	ld a, [wUnlockedUnowns]
	ld c, a
	ld de, 0

.loop

; Don't check this set unless it's been unlocked
	srl c
	jr nc, .next

; Is our letter in the set?
	ld hl, UnlockedUnownLetterSets
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

	push de
	ld a, [wCurForm]
	ld de, 1
	push bc
	call IsInArray
	pop bc
	pop de

	jr c, .match

.next
; Make sure we haven't gone past the end of the table
	inc e
	inc e
	ld a, e
	cp UnlockedUnownLetterSets.End - UnlockedUnownLetterSets
	jr c, .loop

; Hasn't been unlocked, or the letter is invalid
	scf
	ret

.match
; Valid letter
	and a
	ret


UnlockedUnownLetterSets:
	dw .Set1
	dw .Set2
	dw .Set3
	dw .Set4
.End

.Set1:
	;  A   B   C   D   E   F   G   H   I   J
	db 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, -1
.Set2:
	;  K   L   M   N   O   P   Q
	db 11, 12, 13, 14, 15, 16, 17, -1
.Set3:
	;  R   S   T   U   V   W
	db 18, 19, 20, 21, 22, 23, -1
.Set4:
	;  X   Y   Z   !   ?
	db 24, 25, 26, 27, 28, -1
