EvolvePokemon: ; 421d8
	ld hl, wEvolvableFlags
	xor a
	ld [hl], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, SET_FLAG
	call EvoFlagAction
EvolveAfterBattle: ; 421e6
	xor a
	ld [wMonTriedToEvolve], a
	dec a
	ld [wCurPartyMon], a
	push hl
	push bc
	push de
	ld hl, wPartyCount

	push hl

EvolveAfterBattle_MasterLoop:
	ld hl, wCurPartyMon
	inc [hl]

	pop hl

	inc hl
	ld a, [hl]
	cp $ff
	jp z, .ReturnToMap

	ld [wEvolutionOldSpecies], a

	push hl
	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wEvolvableFlags
	ld b, CHECK_FLAG
	call EvoFlagAction
	ld a, c
	and a
	jp z, EvolveAfterBattle_MasterLoop
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Group
	call GetPartyLocation
	call GetPartyMonGroupSpeciesAndForm

	ld a, [wCurGroup]
	call GetRelevantEvosAttacksPointers
	ld a, [wEvolutionOldSpecies]
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, d ;bank
	call GetFarHalfword

	push de
	push hl
	xor a
	ld [wMonType], a
	predef CopyPkmnToTempMon
	pop hl
	pop de
.loop
	ld a, d ; bank
	call GetFarByte
	inc hl
	and a
	jr z, EvolveAfterBattle_MasterLoop

	ld b, a

	ld a, [wLinkMode]
	and a
	jp nz, .dont_evolve_2

	ld a, b
	cp EVOLVE_ITEM
	jp z, .item

	ld a, [wForceEvolution]
	and a
	jp nz, .dont_evolve_2

	ld a, b
	cp EVOLVE_HOLDING
	jp z, .holding
	cp EVOLVE_LOCATION
	jp z, .location
	cp EVOLVE_MOVE
	jp z, .move
	cp EVOLVE_EVS
	jp z, .evs
	cp EVOLVE_LEVEL
	jp z, .level
	cp EVOLVE_HAPPINESS
	jp z, .happiness

; EVOLVE_STAT
	ld a, d ; bank
	call GetFarByte
	ld c, a
	ld a, [wTempMonLevel]
	cp c
	jp c, .dont_evolve_1

	call IsMonHoldingEverstone
	jp z, .dont_evolve_1

	push hl
	push de
	ld de, wTempMonAttack
	ld hl, wTempMonDefense
	ld c, 2
	call StringCmp
	ld a, ATK_EQ_DEF
	jr z, .got_tyrogue_evo
	ld a, ATK_LT_DEF
	jr c, .got_tyrogue_evo
	ld a, ATK_GT_DEF
.got_tyrogue_evo
	pop de
	pop hl

	inc hl
	push af
	ld a, d ; bank
	call GetFarByte
	ld c, a
	pop af
	cp c
	jp nz, .dont_evolve_2

	inc hl
	jp .proceed


.happiness
	ld a, [wTempMonHappiness]
	cp HAPPINESS_TO_EVOLVE
	jp c, .dont_evolve_2

	call IsMonHoldingEverstone
	jp z, .dont_evolve_2

	ld a, d ; bank
	call GetFarByte
	inc hl 
	cp TR_ANYTIME
	jp z, .proceed
	cp TR_MORNDAY
	jp z, .happiness_daylight

; TR_NITE
	ld a, [wTimeOfDay]
	cp NITE
	jp nz, .dont_evolve_3
	jp .proceed

.happiness_daylight
	ld a, [wTimeOfDay]
	cp NITE
	jp z, .dont_evolve_3
	jp .proceed

.item
	ld a, d ; bank
	call GetFarByte
	inc hl 
	ld b, a
	ld a, [wCurItem]
	cp b
	jp nz, .dont_evolve_3

	ld a, [wForceEvolution]
	and a
	jp z, .dont_evolve_3
	ld a, [wLinkMode]
	and a
	jp nz, .dont_evolve_3
	jp .proceed

.holding
	ld a, d ; bank
	call GetFarByte
	inc hl 
	ld b, a
	ld a, [wTempMonItem]
	cp b
	jp nz, .dont_evolve_3
	xor a
	ld [wTempMonItem], a
	jp .proceed

.location
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	push hl
	call GetWorldMapLocation
	pop hl
	ld b, a
	ld a, d ; bank
	call GetFarByte
	inc hl 
	cp b
	jp nz, .dont_evolve_3
	jp .proceed

.move
	ld a, d ; bank
	call GetFarByte
	inc hl 
	push hl
	push bc
	ld b, a
	ld hl, wTempMonMoves
rept 4
	ld a, [hli]
	cp b
	jp z, .move_proceed
endr
	pop bc
	pop hl
	jp .dont_evolve_3

.move_proceed
	pop bc
	pop hl
	jp .proceed

.evs
	ld a, d ; bank
	call GetFarByte
	inc hl 
	push hl
	push bc
	ld hl, wTempMonSpecies
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	pop bc
	pop hl
	cp EVS_TO_EVOLVE
	jp c, .dont_evolve_3
	jp .proceed

.level
	ld a, d ; bank
	call GetFarByte
	inc hl
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3

.proceed
	ld a, [wTempMonLevel]
	ld [wCurPartyLevel], a
	ld a, $1
	ld [wMonTriedToEvolve], a

	push hl ; 1

	ld a, d ; bank
	push de ; 2
	call GetFarByte
	ld [wBuffer2], a
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	call CopyName1
	ld hl, Text_WhatEvolving
	call PrintText

	ld c, 50
	call DelayFrames

	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	lb bc, 12, 20
	call ClearBox

	ld a, $1
	ldh [hBGMapMode], a
	call ClearSprites

	farcall EvolutionAnimation

	push af ; 3
	call ClearSprites
	pop af ; 2
	jp c, CancelEvolution

	ld hl, Text_CongratulationsYourPokemon
	call PrintText

	pop de ; 1

	pop hl ; 0

	ld a, d ; bank
	call GetFarByte
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	ld [wBuffer2], a
	ld [wd265], a
	call GetPokemonName

	push hl ; 1
	ld hl, Text_EvolvedIntoPKMN
	call PrintTextBoxText

	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_CAUGHT_MON
	call PlaySFX
	call WaitSFX

	ld c, 40
	call DelayFrames

	call ClearTileMap
	call UpdateSpeciesNameIfNotNicknamed
	call GetBaseData ;form is known

	ld hl, wTempMonEVs - 1
	ld de, wTempMonMaxHP
	ld b, TRUE
	predef CalcPkmnStats

	ld a, [wCurPartyMon]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld e, l
	ld d, h
	ld bc, MON_MAXHP
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP + 1
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld hl, wTempMonHP + 1
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a

	ld hl, wTempMon
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes

	ld a, [wCurSpecies]
	ld [wd265], a
	xor a
	ld [wMonType], a
	ld a, [wd265]
	push af ; 2
	call LearnEvolutionMove
	call LearnLevelMoves
	pop af ; 1
	ld [wd265], a
	dec a
	call SetSeenAndCaughtMon

	ld a, [wd265]
	cp UNOWN
	jr nz, .skip_unown

	ld hl, wTempMonGroup
	call GetPartyMonGroupSpeciesAndForm
	farcall UpdateUnownDex

.skip_unown
	pop de ; 0
	pop hl ; -1 ; I was really confused tracking the pushes and pops for a moment
	ld a, [wTempMonSpecies]
	ld [hl], a
	push hl ; 0
	ld l, e ; oh so its going there now is it? but why? HL is immediately overwritten upon jumping
	ld h, d ; and DE is ovwewritten as well this is just so strange on why this is even here
	jp EvolveAfterBattle_MasterLoop
; 423f8

.dont_evolve_1
	inc hl
.dont_evolve_2
	inc hl
.dont_evolve_3
	inc hl
	jp .loop

.ReturnToMap:
	pop de
	pop bc
	pop hl
	ld a, [wLinkMode]
	and a
	ret nz
	ld a, [wBattleMode]
	and a
	ret nz
	ld a, [wMonTriedToEvolve]
	and a
	call nz, RestartMapMusic
	ret
; 42414

UpdateSpeciesNameIfNotNicknamed: ; 42414
	ld a, [wEvolutionOldSpecies]
	ld [wd265], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
.loop
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	ret nz
	cp "@"
	jr nz, .loop

	ld a, [wCurPartyMon]
	ld bc, PKMN_NAME_LENGTH
	ld hl, wPartyMonNicknames
	rst AddNTimes
	push hl
	ld a, [wCurSpecies]
	ld [wd265], a
	call GetPokemonName
	ld hl, wStringBuffer1
	pop de
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	ret
; 42454

CancelEvolution: ; 42454
	ld hl, Text_StoppedEvolving
	call PrintText
	call ClearTileMap
	pop hl
	jp EvolveAfterBattle_MasterLoop
; 42461

IsMonHoldingEverstone: ; 42461
	push hl
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [hl]
	cp EVERSTONE
	pop hl
	ret
; 42473

Text_CongratulationsYourPokemon: ; 0x42473
	; Congratulations! Your @ @
	text_jump UnknownText_0x1c4b92
	db "@"
; 0x42478

Text_EvolvedIntoPKMN: ; 0x42478
	; evolved into @ !
	text_jump UnknownText_0x1c4baf
	db "@"
; 0x4247d

Text_StoppedEvolving: ; 0x4247d
	; Huh? @ stopped evolving!
	text_jump UnknownText_0x1c4bc5
	db "@"
; 0x42482

Text_WhatEvolving: ; 0x42482
	; What? @ is evolving!
	text_jump UnknownText_0x1c4be3
	db "@"
; 0x42487


LearnEvolutionMove:
	ld a, [wd265]
	ld [wCurPartySpecies], a
	ld a, [wCurGroup]
	call GetRelevantEvolutionMoves
	ld a, [wCurPartySpecies]
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	ld a, d ;bank
	call GetFarByte
	and a
	ret z

	push hl
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes

	ld b, NUM_MOVES
.check_move
	ld a, [hli]
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move

	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wd265], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	ld a, [wCurPartySpecies]
	ld [wd265], a

.has_move
	pop hl
	ret


LearnLevelMoves: ; 42487
	ld a, [wd265]
	ld [wCurPartySpecies], a
	ld a, [wCurGroup]
	call GetRelevantEvosAttacksPointers
	ld a, [wCurPartySpecies]
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, d ;bank
	call GetFarHalfword

.skip_evos
	ld a, d ;bank
	call GetFarByte
	inc hl
	and a
	jr nz, .skip_evos

.find_move
	ld a, d ;bank
	call GetFarByte
	inc hl
	and a
	jr z, .done

	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	jr z, .found_move
	inc hl
	jr .find_move
.found_move
	ld a, d ;bank
	call GetFarByte
	inc hl
	ld c, d ; bank

	push hl
	push bc
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	pop bc

	ld b, NUM_MOVES
.check_move
	ld a, [hli]
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move
	jr .learn
.has_move

	pop hl
	ld d, c; bank
	jr .find_move

.learn
	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wd265], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	pop hl
	jr .find_move

.done
	ld a, [wCurPartySpecies]
	ld [wd265], a
	ret
; 424e1


FillMoves: ; 424e1
; Fill in moves at de for wCurPartySpecies at wCurPartyLevel

	push hl
	push de
	push bc
	ld a, [wCurGroup]
	push de
	call GetRelevantEvosAttacksPointers
	ld b, 0
	ld a, [wCurPartySpecies]
	dec a
	add a
	rl b
	ld c, a
	add hl, bc
	ld c, d ;bank
	ld a, d ;bank
	pop de
	call GetFarHalfword
.GoToAttacks:
	ld a, c ;bank
	call GetFarByte
	inc hl
	and a
	jr nz, .GoToAttacks
	jr .GetLevel

.NextMove:
	pop de
	ld c, b
.GetMove:
	inc hl
.GetLevel:
	ld a, c ;bank
	call GetFarByte
	inc hl
	and a
	jp z, .done
	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	jp c, .done
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .CheckMove
	ld a, [wd002]
	cp b
	jr nc, .GetMove

.CheckMove:
	push de
	ld b, c ; bank
	ld c, NUM_MOVES
.CheckRepeat:
	ld a, b ;bank
	call GetFarByte
	push bc
	ld b, a
	ld a, [de]
	inc de
	cp b
	pop bc
	jr z, .NextMove
	dec c
	jr nz, .CheckRepeat
	pop de
	push de
	ld c, NUM_MOVES
.CheckSlot:
	ld a, [de]
	and a
	jr z, .LearnMove
	inc de
	dec c
	jr nz, .CheckSlot
	pop de
	push de
	push hl
	ld h, d
	ld l, e
	call ShiftMoves
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .ShiftedMove
	push de
	push bc
	ld bc, wPartyMon1PP - (wPartyMon1Moves + NUM_MOVES - 1)
	add hl, bc
	ld d, h
	ld e, l
	call ShiftMoves
	pop bc
	pop de

.ShiftedMove:
	pop hl

.LearnMove:
	ld a, b ;bank
	call GetFarByte
	ld [de], a
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .NextMove
	push hl
	push bc
	ld a, b ;bank
	call GetFarByte
	ld hl, MON_PP - MON_MOVES
	add hl, de
	push hl
	dec a
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	rst AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop hl
	ld [hl], a
	pop bc
	pop hl
	jp .NextMove

.done
	pop bc
	pop de
	pop hl
	ret
; 4256e

ShiftMoves: ; 4256e
	ld c, NUM_MOVES - 1
.loop
	inc de
	ld a, [de]
	ld [hli], a
	dec c
	jr nz, .loop
	ret
; 42577


EvoFlagAction: ; 42577
	push de
	ld d, $0
	predef FlagPredef
	pop de
	ret
; 42581

GetPreEvolution: ; 42581
; Find the first mon to evolve into wCurPartySpecies.

; Return carry and the new species in wCurPartySpecies
; if a pre-evolution is found.
	call GetMaxNumPokemonForGroup
	ld c, a
.loop ; For each Pokemon...
	dec c
	ld a, [wCurGroup]
	push bc
	call GetRelevantEvosAttacksPointers
	pop bc

	ld b, 0
	add hl, bc
	add hl, bc
	ld a, d
	call GetFarHalfword
.loop2 ; For each evolution...
	ld a, d
	call GetFarByte
	inc hl
	and a
	jr z, .no_evolve ; If we jump, this Pokemon does not evolve into wCurPartySpecies.
	cp EVOLVE_STAT ; This evolution type has the extra parameter of stat comparison.
	jr nz, .not_tyrogue
	inc hl

.not_tyrogue
	inc hl
	ld a, [wCurPartySpecies]
	ld b, a
	ld a, d
	call GetFarByte
	cp b
	jr z, .found_preevo
	inc hl
	call GetFarByte
	and a
	jr nz, .loop2

.no_evolve
	ld a, c
	and a
	jr nz, .loop
	ret

.found_preevo
	ld a, c
	inc a
	ld [wCurPartySpecies], a
	scf
	ret
; 425b1

GetRelevantEvosAttacksPointers:
; given species in a, return *EvosAttacksPointers in hl and BANK(*EvosAttacksPointers) in d
; returns c for variants, nc for normal species
	ld hl, VariantEvosAttacksPointerTable
	ld de, 4
	call IsInArray
	inc hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

GetRelevantEvolutionMoves:
; given species in a, return *EvosAttacksPointers in hl and BANK(*EvosAttacksPointers) in d
; returns c for variants, nc for normal species
	ld hl, VariantEvolutionMovesPointerTable
	ld de, 4
	call IsInArray
	inc hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

INCLUDE "data/pokemon/variant_evos_attacks_pointer_table.asm"
