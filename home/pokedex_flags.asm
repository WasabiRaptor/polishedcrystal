SetSeenAndCaughtMon:: ; 3380
	ld c, a
	push af ;1
	call GetRelevantCaughtPointers

	ldh a, [rSVBK]
	push af ; 2
	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a
	
	ld b, SET_FLAG
	call PokedexFlagAction

	pop af ; 1
	ldh [rSVBK], a
	pop af ;0
; 338b
SetSeenMon:: ; 338b
	ld c, a
	call GetRelevantSeenPointers

	ldh a, [rSVBK]
	push af ; 1
	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a

	ld b, SET_FLAG
	call PokedexFlagAction

	pop af ; 0
	ldh [rSVBK], a
	ret
; 3393

CheckCaughtMon:: ; 3393
	ld c, a
	call GetRelevantCaughtPointers
	ld b, CHECK_FLAG
	jr PokedexFlagAction
; 339b

CheckSeenMon:: ; 339b
	ld c, a
	call GetRelevantSeenPointers
	ld b, CHECK_FLAG
	; fallthrough
; 33a1

PokedexFlagAction:: ; 33a1
	ld d, BANK(wPokedexCaughtSeen)
	predef FlagPredef
	ld a, c
	and a
	ret
; 33ab

GetRelevantSeenPointers::
	ld hl, RegionalSeenTable
	jr GetRelevantSeenCaughtPointers
	
GetRelevantCaughtPointers::
	ld hl, RegionalCaughtTable

GetRelevantSeenCaughtPointers::
	push bc
	ld a, [wCurGroup]
	ld de, 3
	call IsInArray
	inc hl 
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc
	ret

INCLUDE "data/pokemon/regional_seen_caught_tables.asm"
