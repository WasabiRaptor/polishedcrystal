; Used by CheckSleepingTreeMon

AsleepTreeMonsNite:
	db -1 ; end

AsleepTreeMonsDay:
	db -1 ; end

AsleepTreeMonsMorn:
	db -1 ; end

CheckSleepingTreeMon:: ; 3eb38
; Return carry if species is in the list
; for the current time of day

; Don't do anything if this isn't a tree encounter
	ld a, [wBattleType]
	cp BATTLETYPE_TREE
	jr nz, .NotSleeping

; Nor if the Pokémon has Insomnia/Vital Spirit
	ld a, [wEnemyMonAbility] ; is properly updated at this point, so OK to check
	ld b, a
	ld hl, wTempEnemyMon
	call TempToCurGroupAndSpecies
	ld c, a
	call GetAbility
	ld a, b
	cp INSOMNIA
	jr z, .NotSleeping
	cp VITAL_SPIRIT
	jr z, .NotSleeping

; Get list for the time of day
	ld hl, AsleepTreeMonsMorn
	ld a, [wTimeOfDay]
	cp DAY
	jr c, .Check
	ld hl, AsleepTreeMonsDay
	jr z, .Check
	ld hl, AsleepTreeMonsNite

.Check:
	ld hl, wTempEnemyMon
	call TempToCurGroupAndSpecies
	ld de, 1 ; length of species id
	call IsInArray
; If it's a match, the opponent is asleep
	ret c

.NotSleeping:
	and a
	ret

