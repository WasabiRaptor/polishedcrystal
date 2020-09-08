TryAddMonToParty: ; d88c
; Check if to copy wild Pkmn or generate new Pkmn
	; Whose is it?
	ld de, wPartyCount
	ld a, [wMonType]
	and $f
	jr z, .getpartylocation ; PARTYMON
	ld de, wOTPartyCount

.getpartylocation
	; Do we have room for it?
	ld a, [de]
	inc a
	cp PARTY_LENGTH + 1
	ret nc
	; Increase the party count
	ld [de], a
	ldh [hMoveMon], a ; HRAM backup
	add e
	ld e, a
	jr nc, .loadspecies ; this adds a to de to get the address in the relevant wPartySpecies?
	inc d

.loadspecies
	; Load the species of the Pokemon into the party list.
	; The terminator is usually here, but it'll be back.
	ld a, [wCurPartySpecies]
	ld [de], a
	; Load the terminator into the next slot.
	inc de
	ld a, -1
	ld [de], a
	; Now let's load the OT name.
	ld hl, wPartyMonOT
	ld a, [wMonType]
	and $f
	jr z, .loadOTname
	ld hl, wOTPartyMonOT

.loadOTname
	ldh a, [hMoveMon] ; Restore index from backup
	dec a
	call SkipPlayerNames
	ld d, h
	ld e, l
	ld hl, wPlayerName
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes
	ld a, [wCurPartyGroup]
	ld [wCurGroup], a
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndexBuffer], a
	ld [wCurSpecies], a

	call GetPokemonName
	ld a, [wMonType]
	and $f
	ld hl, wOTPartyMonNicknames
	jr nz, .got_target_nick
	ld hl, wPartyMonNicknames
.got_target_nick
	ldh a, [hMoveMon]
	dec a
	call SkipPokemonNames
	ld d, h
	ld e, l
	ld hl, wStringBuffer1
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes

.skipnickname
	ld hl, wPartyMon1Group
	ld a, [wMonType]
	and $f
	jr z, .initializeStats
	ld hl, wOTPartyMon1Group

.initializeStats
	ldh a, [hMoveMon]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
GeneratePartyMonStats: ; d906
	ld e, l ; group is loaded from hl to de
	ld d, h
	push hl ; 1 ; group is pushed

	ld a, [wCurPartyGroup]; pokemon group
	ld [wCurGroup], a
	ld [de], a
	inc de ; species is now in de

	ld a, [wCurPartySpecies]; pokemon species
	ld [wCurSpecies], a
	call GetBaseData
	ld a, [wCurPartySpecies]
	ld [de], a
	inc de ; item is now in de
	ld a, [wBattleMode]
	and a
	ld a, NO_ITEM ; not xor a; preserve carry flag
	jr z, .skipitem
	ld a, [wEnemyMonItem]

.skipitem
	ld [de], a
	inc de ; mood byte
	ld a, DEFAULT_MOOD
	ld [de], a

	inc de ; moves are now in de
	push de ; 2 ; moves are pushed
	ld h, d ;moves now in hl
	ld l, e
	ld a, [wBattleMode]
	and a
	jr z, .randomlygeneratemoves
	ld a, [wMonType]
	and $f
	jr nz, .randomlygeneratemoves
	ld de, wEnemyMonMoves
rept (NUM_MOVES *2) + -1
	ld a, [de] ; ememy mon moves loaded into the first three moves
	inc de
	ld [hli], a
endr
	ld a, [de] ; last byte of enemy move is loaded
	ld [hl], a
	jr .next

.randomlygeneratemoves
	xor a
rept (NUM_MOVES *2) + -1
	ld [hli], a ; fist three moves made 0
endr
	ld [hl], a ; last byte of last move made 0
	ld [wEggMonInheritMoves], a
	predef FillMoves ; moves are filled
.next
	pop de ; 1 ; moves are popped
rept (NUM_MOVES *2)
	inc de ; done eight times, now mon id is in de
endr
	ld a, [wPlayerID]
	ld [de], a
	inc de ;
	ld a, [wPlayerID + 1]
	ld [de], a
	inc de ; two halves of the id are loaded in, now exp is in de
	push de ;2 exp address in de is pushed
	ld a, [wCurPartyLevel]
	ld d, a
	farcall CalcExpAtLevel
	pop de ; 1 ; exp address is popped
	ldh a, [hProduct + 1]
	ld [de], a
	inc de
	ldh a, [hProduct + 2]
	ld [de], a
	inc de
	ldh a, [hProduct + 3]
	ld [de], a
	inc de ; it is loaded into the three bytes now EVs are in de

	; EVs, DVs, personality
	pop hl ;0 ; group is popped ; why are these even getting popped and pushed here, nothing is done with them
	push hl ; 1 ; group is pushed
	ld a, [wMonType]
	and $f
	jr z, .generateEVsDVsAndPersonality
	farcall GetTrainerEVsDVsAndPersonality
	pop hl ; 0 ; group is popped and pushed again
	push hl ; 1
	jp .initializetrainermonstats

.generateEVsDVsAndPersonality
	xor a
rept 6 ; EVs
	ld [de], a
	inc de ; 0 is loaded into all 6 of the ev bytes, putting dvs in de now
endr
	ld a, [wCurPartySpecies]
	ld [wd265], a
	dec a
	push de ; 2 ; dvs pushed
	farcall CheckCaughtMon
	ld a, [wd265]
	dec a
	farcall SetSeenAndCaughtMon
	pop de ; 1 ; dvs popped
	pop hl ; 0 ; group is popped
	push hl ; 1 ; group is pushed
	ld a, [wBattleMode]
	and a
	jp nz, .copywildmonstats

; Random DVs
	call Random
	ld [wDVAndPersonalityBuffer], a
	call Random
	ld [wDVAndPersonalityBuffer + 1], a
	call Random
	ld [wDVAndPersonalityBuffer + 2], a

	push hl ; 2 and the group is pushed
	ld hl, wDVAndPersonalityBuffer + 2
	farcall ApplyLegendaryDVs
	pop hl ; 1 then popped

; Random nature from 0 to 24
; This overwrites the base data struct, so reload it afterwards
	ld a, [wCurPartyGroup]
	push af ;2 curgroup is pushed
	ld a, [wCurPartySpecies]
	push af ; 3 species is pushed
	ld a, [wCurPartyForm]
	push af ; 4 form is pushed
	push hl ; 5
	ld a, [wPartyMon1Ability]
	ld b, a
	ld hl, wPartyMon1Group
	predef PokemonToGroupSpeciesAndForm
	ld a, [wPartyMon1Species]
	ld [wCurSpecies], a
	call GetAbility
	pop hl ; 4
	pop af ; 3 form is popped
	ld [wCurPartyForm], a
	ld [wCurForm], a
	pop af ; 2 curspecies is popped
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	pop af ; 1 curgroup is popped
	ld [wCurPartyGroup], a
	ld [wCurGroup], a
	push bc ; 2 results from get ability are pushed
	call GetBaseData
	pop bc ; 1 then popped
	ld a, b
	cp SYNCHRONIZE
	jr nz, .no_synchronize
	call Random
	and $1
	jr z, .no_synchronize
	ld a, [wPartyMon1Nature]
	and NATURE_MASK
	jr .got_nature
.no_synchronize
	ld a, NUM_NATURES
	call RandomRange
.got_nature
	ld b, a

; Random ability
; 5% hidden ability, otherwise 50% either main ability
	call Random
	cp 1 + 5 percent
	jr c, .hidden_ability
	and $1
	jr z, .ability_2
.ability_1
	ld a, ABILITY_1
	jr .got_ability
.ability_2
	ld a, ABILITY_2
	jr .got_ability
.hidden_ability
	ld a, HIDDEN_ABILITY
.got_ability
	add b
	ld b, a

; Random shininess
; 1/4096 chance to be shiny, 3/4096 with Shiny Charm
	call Random
	and a
	jr nz, .not_shiny ; 255/256 not shiny
	ld a, [wCurItem]
	push af ; 2 ; cur item is pushed
	ld a, SHINY_CHARM
	ld [wCurKeyItem], a
	push hl ;3 ; group is pushed
	push bc ;4 ; ability results pushed
	push de ;5 ; dvs are pushed
	farcall CheckKeyItem
	pop de ;4 ; dvs popped
	pop bc ;3 ; ability popped
	pop hl ;2 ; group popped
	jr c, .shiny_charm
	pop af ;1 cur item is popped
	ld [wCurItem], a
	call Random
	cp SHINY_NUMERATOR
	jr nc, .not_shiny ; 240/256 still not shiny
.shiny
	ld a, SHINY_MASK
	jr .got_shininess
.shiny_charm
	pop af ;1 ; item is popped, it can be this case or the other one, either way they are at the same value
	ld [wCurItem], a
	call Random
	cp CHARMED_SHINY_NUMERATOR
	jr c, .shiny ; 208/256 still not shiny
.not_shiny
	xor a
.got_shininess
	add b
	ld [wDVAndPersonalityBuffer + 3], a

	; Gender. If lead has Cute Charm, force opposite gender 2/3
	; of the time

	ld a, [wCurPartyGroup]
	push af ;2 curgroup is pushed
	ld a, [wCurPartySpecies]
	push af ; 3 species is pushed
	ld a, [wCurPartyForm]
	push af ; 4 form is pushed

	farcall GetLeadAbility
	ld b, a

	pop af ; 3 form is popped
	ld [wCurPartyForm], a
	ld [wCurForm], a
	pop af ; 2 curspecies is popped
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	pop af ; 1 curgroup is popped
	ld [wCurPartyGroup], a
	ld [wCurGroup], a

	ld a, b
	cp CUTE_CHARM
	jr nz, .not_cute_charm
	ld a, 3
	call BattleRandomRange
	and a
	jr z, .not_cute_charm
	ld a, [wPartyMon1Gender]
	cp FEMALE
	ld a, %111
	jr z, .cute_charm_ok
	ld a, %000
	jr .cute_charm_ok

.not_cute_charm
; Random gender
; Derived from base ratio
; Random gender selection value
	call Random
	and %111
.cute_charm_ok
	ld b, a
; We need the gender ratio to do anything with this.
	push hl ;3 ; group is pushed
	push bc ;4 ; cute charm results pushed
	push de ;5 ; dvs are pushed
	farcall GetRelevantBaseData
	ld bc, BASEMON_GENDER
	add hl, bc
	ld a, d ;bank
	call GetFarByte
	swap a
	and $f
	pop de ;4 ; dvs popped
	pop bc ;3 ; cute charm results popped
	pop hl ;2 ; group popped
	ld c, a
	ld a, b
; Ratios below the value are female, and vice-versa.
	cp c
	ld a, FEMALE
	jr c, .Female
	xor a ; ld a, MALE
.Female:
	ld b, a

; Form 0
	ld a, [wCurForm]
	add b
	ld [wDVAndPersonalityBuffer + 4], a

.initializetrainermonstats
	ld bc, wDVAndPersonalityBuffer
rept 5 ; DVs + Personality
	ld a, [bc]
	ld [de], a
	inc bc ; this is done 5 times, loading each DV and then the form into de
	inc de ; this then leaves happiness in de
endr
	ld a, [wMonType]
	and $f
	ld a, BASE_HAPPINESS
	jr z, .set_happiness
	ld a, $ff
.set_happiness
	ld [de], a
	inc de ; inc happiness to pokerus status
	xor a
rept 4 ; PokerusStatus + CaughtData
	ld [de], a
	inc de ; set caught data to 0 and inc to level
endr
	ld a, [wCurPartyLevel]
	ld [de], a
	inc de ; level is loaded and then inc to status
	xor a
; status
	ld [de], a ; status is set to 0
	inc de ; status to cur PP
	push hl ;2 ; group is pushed again
	push de ;3 ; cur PP is pushed
	inc hl ; inc group to species
	inc hl ; inc species to item
	inc hl ; mood byte
	inc hl ; inc mood to moves
	predef FillPP
	pop de ;2 ; pop cur PP
	pop hl ;1 ; pop group
rept NUM_MOVES
	inc de ; inc from CurPP to HP
endr
	pop hl ;0 ; pop group
	push hl ;1 ; push group
	ld bc, MON_EVS - 1 ; evs -1 would be the last byte of EXP I believe?
	add hl, bc ; and then it adds that to hl putting the last byte of exp in there
	lb bc, FALSE, STAT_HP ; and then calc the HP?
	call CalcPkmnStatC
	ldh a, [hProduct + 2]
	ld [de], a
	inc de
	ldh a, [hProduct + 3]
	ld [de], a
	inc de ; load the calculated HP into the current HP leaving max HP in de
	jr .next2

.copywildmonstats
	push hl ; 2 group is pushed
	ld hl, wEnemyMonDVs
rept 5
	ld a, [hli]
	ld [de], a
	inc de ; dvs are in de, and the enemy mon's in in hl, and this is repeated 5 times
	; dvs only take three bytes, so this must be copying the personality and form byte as well, ending on happiness
endr
	ld a, BASE_HAPPINESS
	ld [de], a ; base happiness is loaded, what a surprise
	inc de ; pokerus and caught data is here now
	xor a
rept 4 ; PokerusStatus + CaughtData
	ld [de], a
	inc de ; everything is loaded 0, and incs 4 times so the level should be here now
endr
	ld a, [wCurPartyLevel]
	ld [de], a ; and what do you know, the level is being loaded
	inc de ; next is status
	ld hl, wEnemyMonStatus
	; Copy wEnemyMonStatus
	ld a, [hli]
	ld [de], a
	inc de ; next after status is the current PP

	ld hl, wEnemyMonCurPP
	ld b, NUM_MOVES

.wildmonpploop ; looped four times, with pp in de and in hl, so it does indeed copy the pp over
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .wildmonpploop; ending with cur HP in de

; Copy wEnemyMonHP
	ld a, [hli]
	ld [de], a
	inc de ; and finally the two bytes for current HP
	ld a, [hl]
	ld [de], a
	inc de ;that leaves max hp in de now
	pop hl ; 1 group is popped
	ld a, [wEnemyMonSpecies]
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a
	ld a, [wEnemyMonGroup]
	ld [wCurGroup], a
	ld [wCurPartyGroup], a
	ld a, [wEnemyMonForm]
	and FORM_MASK
	ld [wCurForm], a
	ld [wCurPartyForm], a

.next2 ; and thus we meet back up with the trainer party both at the same point in the stack
	ld a, [wBattleMode]
	dec a
	jr nz, .generatestats
	ld hl, wEnemyMonMaxHP ;for enemies just copy their max hp
	ld bc, 2 * 6 ; MaxHP + 5 Stats
	rst CopyBytes
	pop hl ; 0 ; group is popped
	jr .next3

.generatestats
	pop hl ; 0 group is popped
	ld bc, MON_EVS - 1
	add hl, bc
	ld b, TRUE ; bit 1 is set so its just applying evs
	push hl ; 1 ; lasy byte of exp is pushed
	push de ; 2 ; max hp is pushed
	call CalcPkmnStats
	pop hl ; 1 ; and max hp is popped into hl
	push bc ; 2 ; and then bc is pushed,
	inc hl ; and then we inc the max HP, to get its second byte
	ld c, [hl] ; and we put the second hp byte in c
	dec hl ; then we dec back to the first max hp byte
	ld b, [hl] ; and put that in b
	dec hl ; and then to the second cur hp byte
	ld [hl], c ; and put c in it
	dec hl ;and then to the first cur hp byte
	ld [hl], b ; put b in it and now HP is filled I guess?
	pop bc ; 1 ; bc is popped
	pop hl ; 0 ; group is popped

.next3
	ld a, [wMonType]
	and $f
	jr nz, .done
	;ld a, [wCurPartySpecies]
	;cp UNOWN
	;jr nz, .done
	;ld hl, wPartyMon1Group
	;ld a, [wPartyCount]
	;dec a
	;ld bc, PARTYMON_STRUCT_LENGTH
	;rst AddNTimes
	;predef GetPartyMonGroupSpeciesAndForm
	;farcall UpdateUnownDex

.done
	scf ; When this function returns, the carry flag indicates success vs failure.
	ret
; da6d

FillPP: ; da6d
	push bc
	ld b, NUM_MOVES
.loop
	ld a, [hli]
	and a
	jr z, .next
	push hl
	push de
	push bc
	inc hl
	inc hl
	inc hl
	ld c, a
	ld a, [hl]
	and MOVE_HIGH_MASK
	ld b, a
	dec bc
	ld hl, Moves + MOVE_PP
	ld a, MOVE_LENGTH
	rst AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop bc
	pop de
	pop hl
.next
	ld [de], a
	inc de
	dec b
	jr nz, .loop
	pop bc
	ret
; da96

SkipPokemonNames:: ; 0x30f4
; Skip a names.
	ld bc, PKMN_NAME_LENGTH
	and a
	ret z
.loop
	add hl, bc
	dec a
	jr nz, .loop
	ret

SkipPlayerNames:: ; 0x30f4
; Skip a names.
	ld bc, PLAYER_NAME_LENGTH
	and a
	ret z
.loop
	add hl, bc
	dec a
	jr nz, .loop
	ret

AddTempmonToParty: ; da96
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	scf
	ret z

	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wCurPartySpecies]
	ld [hli], a
	ld [hl], $ff

	ld hl, wPartyMon1
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld e, l
	ld d, h
	ld hl, wTempMon
	rst CopyBytes

	ld hl, wPartyMonOT
	ld a, [wPartyCount]
	dec a
	call SkipPlayerNames
	ld d, h
	ld e, l
	ld hl, wOTPartyMonOT
	ld a, [wCurPartyMon]
	call SkipPlayerNames
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes

	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	dec a
	call SkipPokemonNames
	ld d, h
	ld e, l
	ld hl, wOTPartyMonNicknames
	ld a, [wCurPartyMon]
	call SkipPokemonNames
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes

	ld a, [wCurPartyForm]
	ld [wCurForm], a
	ld a, [wCurPartyGroup]
	ld [wCurGroup], a
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndexBuffer], a
	cp EGG
	jr z, .egg
	dec a
	farcall SetSeenAndCaughtMon
	ld hl, wPartyMon1Happiness
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld [hl], BASE_HAPPINESS
.egg

	;ld a, [wCurPartySpecies]
	;cp UNOWN
	;jr nz, .not_unown
	;ld hl, wPartyMon1Group
	;ld a, [wPartyCount]
	;dec a
	;ld bc, PARTYMON_STRUCT_LENGTH
	;rst AddNTimes
	;predef GetPokeGroup
	;farcall UpdateUnownDex
	;ld a, [wFirstUnownSeen]
	;and a
	;jr nz, .done
	;ld a, [wCurGroup]
	;ld [wFirstUnownSeen], a
;.not_unown

	;ld a, [wCurPartySpecies]
	;cp MAGIKARP
	;jr nz, .done
	;ld hl, wPartyMon1Group
	;ld a, [wPartyCount]
	;dec a
	;ld bc, PARTYMON_STRUCT_LENGTH
	;rst AddNTimes
	;predef GetPokeGroup
	;ld a, [wFirstMagikarpSeen]
	;and a
	;jr nz, .done
	;ld a, [wCurGroup]
	;ld [wFirstMagikarpSeen], a

.done
	and a
	ret

SentGetPkmnIntoFromBox: ; db3f
; Sents/Gets Pkmn into/from Box depending on Parameter
; wPokemonWithdrawDepositParameter == 0: get Pkmn into Party
; wPokemonWithdrawDepositParameter == 1: sent Pkmn into Box
; wPokemonWithdrawDepositParameter == 2: get Pkmn from DayCare
; wPokemonWithdrawDepositParameter == 3: put Pkmn into DayCare

	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .check_IfPartyIsFull
	cp DAYCARE_WITHDRAW
	jr z, .check_IfPartyIsFull
	cp DAYCARE_DEPOSIT
	ld hl, wBreedMon1
	jr z, .breedmon

	; we want to sent a Pkmn into the Box
	; so check if there's enough space
	ld hl, sBoxCount
	ld a, [hl]
	cp MONS_PER_BOX
	jr nz, .there_is_room
	jp CloseSRAM_And_SetCarryFlag

.check_IfPartyIsFull
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jp z, CloseSRAM_And_SetCarryFlag

.there_is_room
	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wPokemonWithdrawDepositParameter]
	cp DAYCARE_WITHDRAW
	ld a, [wBreedMon1Species]
	jr z, .okay1
	ld a, [wCurPartySpecies]

.okay1
	ld [hli], a
	ld [hl], $ff
	ld a, [wPokemonWithdrawDepositParameter]
	dec a
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	jr nz, .okay2
	ld hl, sBoxMon1
	ld bc, BOXMON_STRUCT_LENGTH
	ld a, [sBoxCount]

.okay2
	dec a ; wPartyCount - 1
	rst AddNTimes

.breedmon
	push hl
	ld e, l
	ld d, h
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	ld hl, sBoxMon1
	ld bc, BOXMON_STRUCT_LENGTH
	jr z, .okay3
	cp DAYCARE_WITHDRAW
	ld hl, wBreedMon1
	jr z, .okay4
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH

.okay3
	ld a, [wCurPartyMon]
	rst AddNTimes

.okay4
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	ld a, [wPokemonWithdrawDepositParameter]
	cp DAYCARE_DEPOSIT
	ld de, wBreedMon1OT
	jr z, .okay5
	dec a
	ld hl, wPartyMonOT
	ld a, [wPartyCount]
	jr nz, .okay6
	ld hl, sBoxMonOT
	ld a, [sBoxCount]

.okay6
	dec a
	call SkipPlayerNames
	ld d, h
	ld e, l

.okay5
	ld hl, sBoxMonOT
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .okay7
	ld hl, wBreedMon1OT
	cp DAYCARE_WITHDRAW
	jr z, .okay8
	ld hl, wPartyMonOT

.okay7
	ld a, [wCurPartyMon]
	call SkipPlayerNames

.okay8
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes
	ld a, [wPokemonWithdrawDepositParameter]
	cp DAYCARE_DEPOSIT
	ld de, wBreedMon1Nick
	jr z, .okay9
	dec a
	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	jr nz, .okay10
	ld hl, sBoxMonNicknames
	ld a, [sBoxCount]

.okay10
	dec a
	call SkipPokemonNames
	ld d, h
	ld e, l

.okay9
	ld hl, sBoxMonNicknames
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .okay11
	ld hl, wBreedMon1Nick
	cp DAYCARE_WITHDRAW
	jr z, .okay12
	ld hl, wPartyMonNicknames

.okay11
	ld a, [wCurPartyMon]
	call SkipPokemonNames

.okay12
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	pop hl

	ld a, [wPokemonWithdrawDepositParameter]
	cp PC_DEPOSIT
	jr z, .took_out_of_box
	cp DAYCARE_DEPOSIT
	jp z, .CloseSRAM_And_ClearCarryFlag

	push hl
	srl a
	add $2
	ld [wMonType], a
	predef CopyPkmnToTempMon
	farcall CalcLevel
	ld a, d
	ld [wCurPartyLevel], a
	pop hl

	ld b, h
	ld c, l
	ld hl, MON_LEVEL
	add hl, bc
	ld [hl], a
	ld hl, MON_MAXHP
	add hl, bc
	ld d, h
	ld e, l
	ld hl, MON_EVS - 1
	add hl, bc

	push bc
	ld b, TRUE
	call CalcPkmnStats
	pop bc

	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr nz, .CloseSRAM_And_ClearCarryFlag
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	inc hl
	inc hl
	ld a, [hli]
	ld [de], a
	ld a, [hl]
	inc de
	ld [de], a
	jr .CloseSRAM_And_ClearCarryFlag

.egg
	xor a
	ld [de], a
	inc de
	ld [de], a
	jr .CloseSRAM_And_ClearCarryFlag

.took_out_of_box
	ld a, [sBoxCount]
	dec a
	ld b, a
	;call RestorePPofDepositedPokemon
.CloseSRAM_And_ClearCarryFlag:
	call CloseSRAM
	and a
	ret
; dcb1

CloseSRAM_And_SetCarryFlag: ; dcb1
	call CloseSRAM
	scf
	ret
; dcb6

RestorePPofDepositedPokemon: ; dcb6
	ld a, b
	ld hl, sBoxMons
	ld bc, BOXMON_STRUCT_LENGTH
	rst AddNTimes
	ld b, h
	ld c, l
	ld hl, MON_CUR_PP
	add hl, bc
	push hl
	push bc
	ld de, wTempMonCurPP
	ld bc, NUM_MOVES
	rst CopyBytes
	pop bc
	ld hl, MON_MOVES
	add hl, bc
	push hl
	ld de, wTempMonMoves
	ld bc, NUM_MOVES
	rst CopyBytes
	pop hl
	pop de

	ld a, [wMenuCursorY]
	push af
	ld a, [wMonType]
	push af
	ld b, 0
.loop
	ld a, [hli]
	and a
	jr z, .done
	ld [wTempMonMoves], a
	ld a, BOXMON
	ld [wMonType], a
	ld a, b
	ld [wMenuCursorY], a
	push bc
	push hl
	push de
	call GetMaxPPOfMove
	pop de
	pop hl
	ld a, [wd265]
	ld b, a
	ld a, [de]
	and %11000000
	add b
	ld [de], a
	pop bc
	inc de
	inc b
	ld a, b
	cp NUM_MOVES
	jr c, .loop

.done
	pop af
	ld [wMonType], a
	pop af
	ld [wMenuCursorY], a
	ret
; dd21

RetrievePokemonFromDayCareMan: ; dd21
	ld hl, wBreedMon1Group
	predef GetPartyMonGroupSpeciesAndForm
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	call GetBreedMon1LevelGrowth
	ld a, b
	ld [wd002], a
	ld a, e
	ld [wCurPartyLevel], a
	xor a
	ld [wPokemonWithdrawDepositParameter], a
	jr Functiondd64
; dd42

RetrievePokemonFromDayCareLady: ; dd42
	ld hl, wBreedMon2
	predef GetPartyMonGroupSpeciesAndForm
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	call GetBreedMon2LevelGrowth
	ld a, b
	ld [wd002], a
	ld a, e
	ld [wCurPartyLevel], a
	ld a, PC_DEPOSIT
	ld [wPokemonWithdrawDepositParameter], a
	; fallthrough
; dd64

Functiondd64: ; dd64
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jr nz, .room_in_party
	scf
	ret

.room_in_party
	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	ld a, [wBreedMon1Species]
	ld de, wBreedMon1Nick
	jr z, .okay
	ld a, [wBreedMon2Species]
	ld de, wBreedMon2Nick

.okay
	ld [hli], a
	ld [wCurSpecies], a
	ld a, $ff
	ld [hl], a
	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	dec a
	call SkipPokemonNames
	push hl
	ld h, d
	ld l, e
	pop de
	rst CopyBytes
	push hl
	ld hl, wPartyMonOT
	ld a, [wPartyCount]
	dec a
	call SkipPlayerNames
	ld d, h
	ld e, l
	pop hl
	rst CopyBytes
	push hl
	call GetPartySlotForBreedmon
	pop hl
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	call GetBaseData
	call GetPartySlotForBreedmon
	ld b, d
	ld c, e
	ld hl, MON_LEVEL
	add hl, bc
	ld a, [wCurPartyLevel]
	ld [hl], a
	ld hl, MON_MAXHP
	add hl, bc
	ld d, h
	ld e, l
	ld hl, $a ; 10 bytes = 5 stats * 2?
	add hl, bc
	push bc
	ld b, TRUE
	call CalcPkmnStats
	ld hl, wPartyMon1Moves
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ld a, $1
	ld [wEggMonInheritMoves], a
	predef FillMoves
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	call HealPartyMonEvenForNuzlocke
	ld a, [wCurPartyLevel]
	ld d, a
	farcall CalcExpAtLevel
	pop bc
	ld hl, $8 ; Experience
	add hl, bc
	ldh a, [hMultiplicand]
	ld [hli], a
	ldh a, [hMultiplicand + 1]
	ld [hli], a
	ldh a, [hMultiplicand + 2]
	ld [hl], a
	and a
	ret
; de1a

GetPartySlotForBreedmon: ; de1a
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ret
; de2a

DepositMonWithDayCareMan: ; de2a
	ld de, wBreedMon1Nick
	call DepositBreedmon
	xor a
	ld [wPokemonWithdrawDepositParameter], a
	jp RemoveMonFromPartyOrBox
; de37

DepositMonWithDayCareLady: ; de37
	ld de, wBreedMon2Nick
	call DepositBreedmon
	xor a
	ld [wPokemonWithdrawDepositParameter], a
	jp RemoveMonFromPartyOrBox
; de44

DepositBreedmon: ; de44
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call SkipPokemonNames
	rst CopyBytes
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOT
	call SkipPlayerNames
	rst CopyBytes
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	ret

SentPkmnIntoBox: ; de6e
; Sents the Pkmn into one of Bills Boxes
; the data comes mainly from 'wEnemyMon:'
	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld de, sBoxCount
	ld a, [de]
	cp MONS_PER_BOX
	jp nc, .full
	inc a
	ld [de], a

	ld a, [wCurPartyForm]
	ld [wCurForm], a
	ld a, [wCurPartyGroup]
	ld [wCurGroup], a
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	ld c, a
.loop
	inc de
	ld a, [de]
	ld b, a
	ld a, c
	ld c, b
	ld [de], a
	inc a
	jr nz, .loop

	call GetBaseData
	call ShiftBoxMon

	ld hl, wPlayerName
	ld de, sBoxMonOT
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes

	ld a, [wCurPartySpecies]
	ld [wd265], a
	call GetPokemonName

	ld de, sBoxMonNicknames
	ld hl, wStringBuffer1
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes

	ld hl, wEnemyMon
	ld de, sBoxMon1
	ld bc, 1 + 1 + NUM_MOVES ; species + item + moves
	rst CopyBytes

	ld hl, wPlayerID
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	push de
	ld a, [wCurPartyLevel]
	ld d, a
	farcall CalcExpAtLevel
	pop de
	ldh a, [hProduct + 1]
	ld [de], a
	inc de
	ldh a, [hProduct + 2]
	ld [de], a
	inc de
	ldh a, [hProduct + 3]
	ld [de], a
	inc de

	; Set all 6 EVs to 0
	xor a
	ld b, 6
.loop2
	ld [de], a
	inc de
	dec b
	jr nz, .loop2

	ld hl, wEnemyMonDVs
	ld b, 3 + 2 + NUM_MOVES ; DVs, Personality, and PP ; wEnemyMonHappiness - wEnemyMonDVs
.loop3
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop3

	ld a, BASE_HAPPINESS
	ld [de], a
	inc de
	xor a
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld a, [wCurPartyLevel]
	ld [de], a
	ld a, [wCurPartySpecies]
	dec a
	farcall SetSeenAndCaughtMon
	ld a, [wCurPartySpecies]
	cp UNOWN
	jr nz, .not_unown
	ld hl, sBoxMon1Group
	predef GetPartyMonGroupSpeciesAndForm
	;farcall UpdateUnownDex

.not_unown
	ld hl, sBoxMon1Moves
	ld de, wTempMonMoves
	ld bc, NUM_MOVES
	rst CopyBytes

	ld hl, sBoxMon1CurPP
	ld de, wTempMonCurPP
	ld bc, NUM_MOVES
	rst CopyBytes

	ld b, 0
	;call RestorePPofDepositedPokemon

	call CloseSRAM
	scf
	ret
; df42

.full ; df42
	call CloseSRAM
	and a
	ret
; df47

ShiftBoxMon: ; df47
	ld hl, sBoxMonOT
	ld bc, PLAYER_NAME_LENGTH
	call .shift

	ld hl, sBoxMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call .shift

	ld hl, sBoxMons
	ld bc, BOXMON_STRUCT_LENGTH

.shift
	ld a, [sBoxCount]
	cp 2
	ret c

	push hl
	rst AddNTimes
	dec hl
	ld e, l
	ld d, h
	pop hl

	ld a, [sBoxCount]
	dec a
	rst AddNTimes
	dec hl

	push hl
	ld a, [sBoxCount]
	dec a
	ld hl, 0
	rst AddNTimes
	ld c, l
	ld b, h
	pop hl
.loop
	ld a, [hld]
	ld [de], a
	dec de
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ret
; df8c

GiveEgg:: ; df8c
	ld a, [wCurPartySpecies]
	push af
	farcall GetPreEvolution
	farcall GetPreEvolution
	ld a, [wCurPartySpecies]
	dec a

; TryAddMonToParty sets Seen and Caught flags
; when it is successful.  This routine will make
; sure that we aren't newly setting flags.
	push af
	farcall CheckCaughtMon
	pop af
	push bc
	farcall CheckSeenMon
	push bc

	call TryAddMonToParty

	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1IsEgg
	call GetPartyLocation
	ld a, [hl]
	or IS_EGG_MASK
	ld [hl], a

; If we haven't caught this Pokemon before receiving
; the Egg, reset the flag that was just set by
; TryAddMonToParty.
	pop bc
	ld a, c
	and a
	jr nz, .skip_caught_flag
	ld a, [wCurPartySpecies]
	dec a
	ld c, a
	ld d, $0
	ld hl, wPokedexCaught
	ld b, RESET_FLAG
	predef FlagPredef

.skip_caught_flag
; If we haven't seen this Pokemon before receiving
; the Egg, reset the flag that was just set by
; TryAddMonToParty.
	pop bc
	ld a, c
	and a
	jr nz, .skip_seen_flag
	ld a, [wCurPartySpecies]
	dec a
	ld c, a
	ld d, $0
	;ld hl, wPokedexSeen
	;ld b, RESET_FLAG
	;predef FlagPredef

.skip_seen_flag
	pop af
	ld [wCurPartySpecies], a
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Group
	rst AddNTimes
	predef PokemonToGroupSpeciesAndForm
	ld hl, wPartyCount
	ld a, [hl]
	ld b, 0
	ld c, a
	add hl, bc
	ld a, EGG
	ld [hl], a
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	call SkipPokemonNames
	ld de, String_Egg
	call CopyName2
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wMonStatusFlags]
	bit 1, a
	ld a, 1
	jr nz, .got_init_happiness
	ld a, [wBaseEggSteps]
	and $f
	inc a
	ld b, a
	add a
	add a
	add b

.got_init_happiness
	ld [hl], a
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1HP
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	xor a
	ld [hli], a
	ld [hl], a
	and a
	ret
; e035

String_Egg: ; e035
	db "Egg@"
; e039

RemoveMonFromPartyOrBox: ; e039
	ld hl, wPartyCount

	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .okay

	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld hl, sBoxCount
	jr .skip_follow_remove_check

.okay
	ld a, [wFollowerStatus]
	and FOLLOWER_MASK
	dec a
	ld b, a
	ld a, [wCurPartyMon]
	cp b
	jr nz, .skip_follow_remove_check
	ld a, [wFollowerStatus]
	and ~FOLLOWER_MASK
	ld [wFollowerStatus], a

.skip_follow_remove_check
	ld a, [hl]
	dec a
	ld [hli], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, 0
	add hl, bc
	ld e, l
	ld d, h
	inc de
.loop
	ld a, [de]
	inc de
	ld [hli], a
	inc a
	jr nz, .loop
	ld hl, wPartyMonOT
	ld d, PARTY_LENGTH - 1
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .party
	ld hl, sBoxMonOT
	ld d, MONS_PER_BOX - 1

.party
	; If this is the last mon in our party (box),
	; shift all the other mons up to close the gap.
	ld a, [wCurPartyMon]
	call SkipPlayerNames
	ld a, [wCurPartyMon]
	cp d
	jr nz, .delete_inside
	ld [hl], -1
	jp .finish

.delete_inside
	; Shift the OT names
	ld d, h
	ld e, l
	ld bc, PKMN_NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicknames
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .party2
	ld bc, sBoxMonNicknames
.party2
	call CopyDataUntil
	; Shift the struct
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .party4
	ld hl, sBoxMons
	ld bc, BOXMON_STRUCT_LENGTH
.party4
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .party5
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	ld bc, sBoxMonOT
	jr .copy

.party5
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	ld bc, wPartyMonOT
.copy
	call CopyDataUntil
	; Shift the nicknames
	ld hl, wPartyMonNicknames
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .party6
	ld hl, sBoxMonNicknames
.party6
	ld bc, PKMN_NAME_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	ld bc, PKMN_NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicknamesEnd
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .party7
	ld bc, sBoxMonNicknamesEnd
.party7
	call CopyDataUntil
	; Mail time!
.finish
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jp nz, CloseSRAM
	ld a, [wLinkMode]
	and a
	ret nz
	; Shift mail
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	; If this is the last mon in our party, no need to shift mail.
	ld hl, wPartyCount
	ld a, [wCurPartyMon]
	cp [hl]
	jr z, .close_sram
	; Shift our mail messages up.
	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	push hl
	add hl, bc
	pop de
	ld a, [wCurPartyMon]
	ld b, a
.loop2
	push bc
	push hl
	ld bc, MAIL_STRUCT_LENGTH
	rst CopyBytes
	pop hl
	push hl
	ld bc, MAIL_STRUCT_LENGTH
	add hl, bc
	pop de
	pop bc
	inc b
	ld a, [wPartyCount]
	cp b
	jr nz, .loop2
.close_sram
	jp CloseSRAM
; e134

CopyDataUntil:: ; 318c
; Copy [hl .. bc) to de.

; In other words, the source data is
; from hl up to but not including bc,
; and the destination is de.

	ld a, [hli]
	ld [de], a
	inc de
	ld a, h
	cp b
	jr nz, CopyDataUntil
	ld a, l
	cp c
	jr nz, CopyDataUntil
	ret

ComputeNPCTrademonStats: ; e134
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [MON_LEVEL], a ; wow
	ld a, MON_GROUP_SPECIES_AND_FORM
	call GetPartyParamLocation
	call GetBaseData
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld d, h
	ld e, l
	push de
	ld a, MON_EVS - 1
	call GetPartyParamLocation
	ld b, TRUE
	call CalcPkmnStats
	pop de
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hl], a
	ret
; e167

UpdateEnemyPkmnStats:
; Recalculates the stats of wOTPartyMon and also updates current HP accordingly
	ld a, MON_GROUP_SPECIES_AND_FORM
	call GetEnemyPartyParamLocation
	call GetBaseData ;form is known
	ld a, MON_LEVEL
	call GetEnemyPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, MON_MAXHP + 1
	call GetEnemyPartyParamLocation
	ld a, [hld]
	ld c, a
	ld b, [hl]
	push bc
	ld d, h
	ld e, l
	ld a, MON_EVS - 1
	call GetEnemyPartyParamLocation
	ld b, TRUE
	call CalcPkmnStats
	ld a, MON_HP
	call GetEnemyPartyParamLocation
	pop bc
	jp UpdateStats

UpdatePkmnStats:
; Recalculates the stats of wCurPartyMon and also updates current HP accordingly
	ld a, MON_GROUP_SPECIES_AND_FORM
	call GetPartyParamLocation
	call GetBaseData ;form is known
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, MON_MAXHP + 1
	call GetPartyParamLocation
	ld a, [hld]
	ld c, a
	ld b, [hl]
	push bc
	ld d, h
	ld e, l
	ld a, MON_EVS - 1
	call GetPartyParamLocation
	ld b, TRUE
	call CalcPkmnStats
	ld a, MON_HP
	call GetPartyParamLocation
	pop bc
	;fallthrough
UpdateStats:
	; Don't change the current HP if we're fainted
	ld a, [hli]
	or [hl]
	ret z

	; Update current HP
	inc hl
	inc hl
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hld]
	sbc b
	ld b, a
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a

	; Prevent the infamous Pomeg glitch (HP underflow)
	cp $80
	jr nc, .set_hp_to_one

	; Don't faint Pokémon who used to not be fainted
	inc hl
	or [hl]
	ret nz
.set_hp_to_one
	xor a
	ld [hli], a
	inc a
	ld [hl], a
	ret

CalcPkmnStats: ; e167
; Calculates all 6 Stats of a Pkmn
; b: Hyper Training (bit 7-2), apply EVs (bit 0)
; 'c' counts from 1-6 and points with 'wBaseStats' to the base value
; hl is the path to the EVs
; de is a pointer where the 6 stats are placed

	ld c, $0
.loop
	inc c
	call CalcPkmnStatC
	ldh a, [hMultiplicand + 1]
	ld [de], a
	inc de
	ldh a, [hMultiplicand + 2]
	ld [de], a
	inc de
	ld a, c
	cp STAT_SDEF
	jr nz, .loop
	ret
; e17b

CalcPkmnStatC: ; e17b
; 'c' is 1-6 and points to the BaseStat
; 1: HP
; 2: Attack
; 3: Defense
; 4: Speed
; 5: SpAtk
; 6: SpDef
	push hl ; 1 ; input stat is pushed
	push de ; 2 ; de seems not to be an input to this function so is pushed
	push bc ; 3 ; c is the input of the desired stat, not sure what b is for truly
	ld a, b
	ld d, a
	push hl ; 4 ; input stat is pushed again
	ld hl, wBaseStats
	dec hl ; has to be decreased, because 'c' begins with 1
	ld b, $0
	add hl, bc
	ld a, [hl]
	ld e, a
	pop hl ; 3
	push hl ; 4
	ld a, d
	and a
	jr z, .no_evs
	add hl, bc
	ld a, [hl]
	ld b, a
.no_evs
	pop hl ; 3
	push bc ; 4
	ld bc, MON_DVS - (MON_EVS - 1)
	add hl, bc ; hl points to DVs
	pop bc ; 3
	ld a, [wInitialOptions]
	bit PERFECT_IVS_OPT, a
	ld a, $f
	jr nz, .GotDV
	ld a, b
	push bc ; 4
.hyper_training_loop
	rlca
	dec c
	jr nz, .hyper_training_loop
	pop bc ; 3
	ld a, $f
	jr c, .GotDV

.not_hyper_trained
	ld a, c
	cp STAT_ATK
	jr z, .Attack
	cp STAT_DEF
	jr z, .Defense
	cp STAT_SPD
	jr z, .Speed
	cp STAT_SATK
	jr z, .SpclAtk
	cp STAT_SDEF
	jr z, .SpclDef
.HP
	ld a, [hl]
	swap a
	and $f
	jr .GotDV

.Attack:
	ld a, [hl]
	and $f
	jr .GotDV

.Defense:
	inc hl
	ld a, [hl]
	dec hl
	swap a
	and $f
	jr .GotDV

.Speed:
	inc hl
	ld a, [hl]
	dec hl
	and $f
	jr .GotDV

.SpclAtk:
	inc hl
	inc hl
	ld a, [hl]
	dec hl
	dec hl
	swap a
	and $f
	jr .GotDV

.SpclDef:
	inc hl
	inc hl
	ld a, [hl]
	dec hl
	dec hl
	and $f

.GotDV:
	ld d, 0
	add e
	ld e, a
	jr nc, .no_overflow_1
	inc d

.no_overflow_1
	sla e
	inc e
	rl d
	srl b
	srl b
	ld a, b
	add e
	jr nc, .no_overflow_2
	inc d

.no_overflow_2
	ldh [hMultiplicand + 2], a
	ld a, d
	ldh [hMultiplicand + 1], a
	xor a
	ldh [hMultiplicand + 0], a
	ld a, [wCurPartyLevel]
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 1]
	ldh [hDividend + 0], a
	ldh a, [hProduct + 2]
	ldh [hDividend + 1], a
	ldh a, [hProduct + 3]
	ldh [hDividend + 2], a
	ld a, 100
	ldh [hDivisor], a
	ld a, 3
	ld b, a
	call Divide
	ld a, c
	cp STAT_HP
	ld a, STAT_MIN_NORMAL
	jr nz, .not_hp
	ld a, [wCurPartyLevel]
	ld b, a
	ldh a, [hQuotient + 2]
	add b
	ldh [hMultiplicand + 2], a
	jr nc, .no_overflow_3
	ldh a, [hQuotient + 1]
	inc a
	ldh [hMultiplicand + 1], a

.no_overflow_3
	ld a, STAT_MIN_HP

.not_hp
	ld b, a
	ldh a, [hQuotient + 2]
	add b
	ldh [hMultiplicand + 2], a
	jr nc, .no_overflow_4
	ldh a, [hQuotient + 1]
	inc a
	ldh [hMultiplicand + 1], a

.no_overflow_4
	ldh a, [hQuotient + 1]
	cp (1000 / $100) + 1
	jr nc, .max_stat
	cp 1000 / $100
	jr c, .stat_value_okay
	ldh a, [hQuotient + 2]
	cp 1000 % $100
	jr c, .stat_value_okay

.max_stat
	ld a, 999 / $100
	ldh [hMultiplicand + 1], a
	ld a, 999 % $100
	ldh [hMultiplicand + 2], a

.stat_value_okay
	; do natures here
	xor a
	ldh [hMultiplicand + 0], a
	push hl ; 4
	push bc ; 5
	ld bc, MON_NATURE - MON_DVS
	add hl, bc ; hl points to Nature
	ld a, [hl]
	and NATURE_MASK
	pop bc ; 4
	push bc ; 5
	call GetNatureStatMultiplier
	pop bc ; 4
	pop hl ; 3
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 1]
	ldh [hDividend + 0], a
	ldh a, [hProduct + 2]
	ldh [hDividend + 1], a
	ldh a, [hProduct + 3]
	ldh [hDividend + 2], a
	ld a, 10
	ldh [hDivisor], a
	ld a, 3
	ld b, a
	call Divide
	ldh a, [hQuotient + 1]
	ldh [hMultiplicand + 1], a
	ldh a, [hQuotient + 2]
	ldh [hMultiplicand + 2], a
	pop bc ; 2
	pop de ; 1
	pop hl ; 0
	ret

GetEnemyPartyParamLocation::
	push bc
	ld hl, wOTPartyMons
	jr PkmnParamLocation
GetPartyParamLocation:: ; 3917
; Get the location of parameter a from wCurPartyMon in hl
	push bc
	ld hl, wPartyMons
PkmnParamLocation:
	cp MON_GROUP_SPECIES_AND_FORM
	ld c, a
	ld a, [wCurPartyMon]
	jp z, .species_and_group

	ld b, 0
	add hl, bc
	call GetPartyLocation
	pop bc
	ret

.species_and_group
	call GetPartyLocation
	predef GetPartyMonGroupSpeciesAndForm
	pop bc
	ret
; 3927

GetPartyLocation::
; Add the length of a PartyMon struct to hl a times.
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	pop bc
	ret

GetNature::
; 'b' contains the target Nature to check
; returns nature in b
	ld a, [wInitialOptions]
	bit NATURES_OPT, a
	jr z, .no_nature
	ld a, b
	and NATURE_MASK
	; assume nature is 0-24
	ld b, a
	ret

.no_nature:
	ld b, NO_NATURE
	ret

GetNatureStatMultiplier::
; a points to Nature
; c is 1-6 according to the stat (STAT_HP to STAT_SDEF)
; returns (sets a to) 9 if c is lowered, 11 if raised, 10 if neutral
; (to be used in calculations in CalcPkmnStatC)
	push de
	ld d, a
	ld a, c
	cp STAT_HP
	jr z, .neutral
	ld a, d
	ld b, a
	call GetNature
	ld a, b
	cp NO_NATURE
	jr z, .neutral
	ld d, STAT_HP
.loop
	inc d
	sub 5
	jr nc, .loop
	add 7 ; Atk-SpD is 2-6, not 0-4
	cp c
	jr z, .penalty
	ld a, d
	cp c
	jr z, .bonus
.neutral
	ld a, 10
	pop de
	ret
.bonus
	ld a, 11
	pop de
	ret
.penalty
	; Neutral natures (divisible by 6) raise and lower the same stat,
	; but +10% -10% isn't neutral (the result is 99%), so we need to
	; avoid messing with it altogether.
	cp d
	jr z, .neutral
	ld a, 9
	pop de
	ret

GivePoke:: ; e277
	push de
	push bc
	xor a ; PARTYMON
	ld [wMonType], a
	call TryAddMonToParty
	jr nc, .failed
	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	call SkipPokemonNames
	ld d, h
	ld e, l
	pop bc
	ld a, b
	ld b, 0
	push bc
	push de
	push af

;.formAndGender
;	ld a, [wCurForm]
;	and a
;	jr z, .item
;	ld a, [wCurPartyMon]
;	ld hl, wPartyMon1Form
;	ld bc, PARTYMON_STRUCT_LENGTH
;	rst AddNTimes
;	ld a, [wCurForm]
;	ld [hl], a

.item
	ld a, [wCurItem]
	and a
	jr z, .personality
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wCurItem]
	ld [hl], a

.personality
	ld a, [wCurPersonality]
	and a
	jr z, .done
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Personality
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wCurPersonality]
	ld [hl], a
	jr .done

.failed
	ld a, [wCurPartyGroup]
	ld [wTempEnemyMonGroup], a
	ld a, [wCurPartySpecies]
	ld [wTempEnemyMonSpecies], a
	ld a, [wCurPartyForm]
	ld [wTempEnemyMonForm], a
	farcall LoadEnemyMon
	ld a, BANK(sBoxMon1Item)
	call GetSRAMBank
	call SentPkmnIntoBox
	jp nc, .FailedToGiveMon
	ld a, BOXMON
	ld [wMonType], a
	xor a
	ld [wCurPartyMon], a
	ld de, wMonOrItemNameBuffer
	pop bc
	ld a, b
	ld b, 1
	push bc
	push de
	push af


	ld a, [wCurGroup]
	and a
	jr z, .boxItem
	ld a, [wCurGroup]
	ld [sBoxMon1Group], a

.boxItem
	ld a, [wCurItem]
	and a
	jr z, .done
	ld a, [wCurItem]
	ld [sBoxMon1Item], a

.boxPersonality
	ld a, [wCurPersonality]
	and a
	jr z, .done
	ld a, [wCurPersonality]
	ld [sBoxMon1Personality], a

.done
	call CloseSRAM
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndexBuffer], a
	ld [wTempEnemyMonSpecies], a
	ld a, [wCurPartyGroup]
	ld [wCurGroup], a
	ld [wTempEnemyMonGroup], a
	ld a, [wCurPartyForm]
	ld [wTempEnemyMonForm], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	pop af
	and a
	jp z, .wildmon
	pop de
	pop bc
	pop hl
	push bc
	push hl
	ld a, [wScriptBank]
	call GetFarHalfword
	ld bc, PKMN_NAME_LENGTH
	ld a, [wScriptBank]
	call FarCopyBytes
	pop hl
	inc hl
	inc hl
	ld a, [wScriptBank]
	call GetFarHalfword
	pop bc
	ld a, b
	and a
	push de
	push bc
	jr nz, .send_to_box
	push hl
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOT
	call SkipPlayerNames
	ld d, h
	ld e, l
	pop hl
.otnameloop
	ld a, [wScriptBank]
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	cp "@"
	jr nz, .otnameloop
	ld a, [wScriptBank]
	call GetFarByte
	ld b, a
	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wGiftPokeTID]
	and a
	jr z, .randomTID
	ld [hli], a
	ld a, [wGiftPokeTID+1]
	ld [hl], a
	jr .doneTID
.randomTID
	call Random
	ld [hli], a
	call Random
	ld [hl], a
.doneTID
	pop bc
	ld a, [wGiftPokeBall]
	and a
	jr nz, .giftball
	ld a, POKE_BALL
.giftball
	ld c, a
	farcall SetGiftPartyMonCaughtData
	jr .skip_nickname

.send_to_box
	ld a, BANK(sBoxMonOT)
	call GetSRAMBank
	ld de, sBoxMonOT
.loop
	ld a, [wScriptBank]
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	cp "@"
	jr nz, .loop
	ld a, [wScriptBank]
	call GetFarByte
	ld b, a
	ld a, [wGiftPokeBall]
	and a
	jr nz, .boxgiftball
	ld a, POKE_BALL
.boxgiftball
	ld c, a
	ld hl, sBoxMon1ID
	ld a, [wGiftPokeTID]
	and a
	jr z, .boxRandomID
	ld [hli], a
	ld a, [wGiftPokeTID+1]
	ld [hl], a
	jr .doneBoxID
.boxRandomID
	call Random
	ld [hli], a
	call Random
	ld [hl], a
.doneBoxID
	call CloseSRAM
	farcall SetGiftBoxMonCaughtData
	jr .skip_nickname

.wildmon
	pop de
	pop bc
	push bc
	push de
	ld a, b
	and a
	jr z, .party
	farcall SetBoxMonCaughtData
	jr .set_caught_data

.party
	ld a, [wGiftPokeBall]
	and a
	jr nz, .partygiftball
	ld a, POKE_BALL
.partygiftball
	ld [wCurItem], a
	farcall SetCaughtData
.set_caught_data
	farcall GiveANickname_YesNo
	pop de
	jr c, .skip_nickname
	call InitNickname

.skip_nickname
	farcall LoadPlayerFollowerOWPalsTimeOfDay
	farcall ApplyPals
	call UpdateTimePals
	pop bc
	pop de
	ld a, b
	and a
	ret z
	ld hl, TextJump_WasSentToBillsPC
	call PrintText
	ld a, BANK(sBoxMonNicknames)
	call GetSRAMBank
	ld hl, wMonOrItemNameBuffer
	ld de, sBoxMonNicknames
	ld bc, PKMN_NAME_LENGTH
	rst CopyBytes
	call CloseSRAM
	ld b, $1
	ret
; e3d4

.FailedToGiveMon: ; e3d4
	call CloseSRAM
	pop bc
	pop de
	ld b, $2
	ret
; e3d9

TextJump_WasSentToBillsPC: ; 0xe3d9
	; was sent to BILL's PC.
	text_jump Text_WasSentToBillsPC
	db "@"
; 0xe3de

InitNickname: ; e3de
	push de
	call LoadStandardMenuDataHeader
	call DisableSpriteUpdates
	pop de
	push de
	ld b, $0 ; pokemon
	farcall NamingScreen
	pop hl
	ld de, wStringBuffer1
	call InitName
	jp ExitAllMenus
; e3fd
