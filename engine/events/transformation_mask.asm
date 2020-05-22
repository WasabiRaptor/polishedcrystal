
pokestruct_species: macro
	db GROUP_\1, \1
endm

pokesetruct_moveset: macro
	if _NARG >= 5
	db LOW(\1)
	db LOW(\3)
	db LOW(\5)
	db LOW(\7)
	db HIGH(\1) | (\2 << 6)
	db HIGH(\3) | (\4 << 6)
	db HIGH(\5) | (\6 << 6)
	db HIGH(\7) | (\8 << 6)
	else
	db LOW(\1)
	db LOW(\2)
	db LOW(\3)
	db LOW(\4)
	db HIGH(\1)
	db HIGH(\2)
	db HIGH(\3)
	db HIGH(\4)
	endc
endm

dw2: macro
	db HIGH(\1), LOW(\1)
endm


LokiPokestruct:
	pokestruct_species VULPIX ;species
	db NO_ITEM ; item
	db MON_IS_PLAYER | DEFAULT_MOOD ; mood
	pokesetruct_moveset FLAMETHROWER, HYPNOSIS, HEX, WILL_O_WISP ; moveset
	dw2 1533 ; ID
	db 0, 0, 0 ; exp, don't worry it'll be filled in later

	; EVs
	db 255, 255, 255, 255, 255, 255
	;  HP   Atk  Def  Spd  SAtk SDef

	; DVs
	db $ff ; HP and Atk
	db $ff ; Def and Spd
	db $ff ; SAtk and SDef

	; personality
	db ABILITY_1 | QUIRKY ; hm, nature seems to not be setting
	db MALE | LOKI ; gender and form
	db BASE_HAPPINESS ; happiness
	db 0 ; pokerus status

	; caught data
	db 0 ; caught gender, time, and ball
	db 0 ; caught level
	db 0 ; caught location

	db 50 ; level
	db 0 ; status

	; these will be filled in a moment
	db 0, 0, 0, 0 ; cur PP
	dw 0 ; HP

SolenPokestruct:
	pokestruct_species LUXIO ;species
	db NO_ITEM ; item
	db MON_IS_PLAYER | DEFAULT_MOOD ; mood
	pokesetruct_moveset THUNDER_FANG, WILD_CHARGE, ACID_ARMOR, RECOVER ; moveset
	dw2 0404 ; ID
	db 0, 0, 0 ; exp, don't worry it'll be filled in later

	; EVs
	db 255, 255, 255, 255, 255, 255
	;  HP   Atk  Def  Spd  SAtk SDef

	; DVs
	db $ff ; HP and Atk
	db $ff ; Def and Spd
	db $ff ; SAtk and SDef

	; personality
	db ABILITY_1 | QUIRKY ; hm, nature seems to not be setting
	db MALE ; gender and form
	db BASE_HAPPINESS ; happiness
	db 0 ; pokerus status

	; caught data
	db 0 ; caught gender, time, and ball
	db 0 ; caught level
	db 0 ; caught location

	db 50 ; level
	db 0 ; status

	; these will be filled in a moment
	db 0, 0, 0, 0 ; cur PP
	dw 0 ; HP

ThalinsPokestruct:
	pokestruct_species DEWOTT ;species
	db NO_ITEM ; item
	db MON_IS_PLAYER | DEFAULT_MOOD ; mood
	pokesetruct_moveset RAZOR_SHELL, AQUA_JET, SCALD, SACRED_SWORD ; moveset
	dw2 0502 ; ID
	db 0, 0, 0 ; exp, don't worry it'll be filled in later

	; EVs
	db 255, 255, 255, 255, 255, 255
	;  HP   Atk  Def  Spd  SAtk SDef

	; DVs
	db $ff ; HP and Atk
	db $ff ; Def and Spd
	db $ff ; SAtk and SDef

	; personality
	db ABILITY_1 | QUIRKY ; hm, nature seems to not be setting
	db MALE ; gender and form
	db BASE_HAPPINESS ; happiness
	db 0 ; pokerus status

	; caught data
	db 0 ; caught gender, time, and ball
	db 0 ; caught level
	db 0 ; caught location

	db 50 ; level
	db 0 ; status

	; these will be filled in a moment
	db 0, 0, 0, 0 ; cur PP
	dw 0 ; HP

WeaverPokestruct:
	pokestruct_species SYLVEON ;species
	db NO_ITEM ; item
	db MON_IS_PLAYER | DEFAULT_MOOD ; mood
	pokesetruct_moveset MOONBLAST, HYPER_VOICE, SHADOW_BALL, LIGHT_SCREEN ; moveset
	dw2 7114 ; ID
	db 0, 0, 0 ; exp, don't worry it'll be filled in later

	; EVs
	db 255, 255, 255, 255, 255, 255
	;  HP   Atk  Def  Spd  SAtk SDef

	; DVs
	db $ff ; HP and Atk
	db $ff ; Def and Spd
	db $ff ; SAtk and SDef

	; personality
	db HIDDEN_ABILITY | QUIRKY
	db MALE ; gender and form
	db BASE_HAPPINESS ; happiness
	db 0 ; pokerus status

	; caught data
	db 0 ; caught gender, time, and ball
	db 0 ; caught level
	db 0 ; caught location

	db 50 ; level
	db 0 ; status

	; these will be filled in in just a moment
	db 0, 0, 0, 0 ; cur PP
	dw 0 ; HP


_LokiMask::
	ld hl, LokiPokestruct
	jr CopyPokestructToPlayerMon

_SolenMask::
	ld hl, SolenPokestruct
	jr CopyPokestructToPlayerMon

_ThalinsMask::
	ld hl, ThalinsPokestruct
	jr CopyPokestructToPlayerMon

_WeaverMask::
	ld hl, WeaverPokestruct
	;fallthough
CopyPokestructToPlayerMon:
	ld de, wPlayerMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes

	ld hl, wPlayerMonGroup
	predef GetPartyMonGroupSpeciesAndForm
	call GetBaseData

	ld hl, wPlayerMonMoves
	ld de, wPlayerMonCurPP
	predef FillPP

	ld a, [wPlayerMonLevel]
	ld [wCurPartyLevel], a
	ld d, a
	farcall CalcExpAtLevel
	ld hl, wPlayerMonExp
	ldh a, [hProduct + 1]
	ld [hli], a
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	; the last byte of exp is evs -1 so no need to load anything here ok
	ld de, wPlayerMonMaxHP
	ld b, TRUE
	predef CalcPkmnStats

	ld de, wPlayerMonHP
	ld hl, wPlayerMonMaxHP
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

	;fallthrough

_TransformationMask::
	xor a
	ld [wFieldMoveSucceeded], a

	ld de, 2 ; permission
	call GetMapHeaderMember
	bit TRANSFORM_DISABLE_F, c
	ret nz

	ld a, [wPlayerOverworldStatus]
	and PLAYER_IS_POKEMON
	jp nz, TransformPlayerToHuman

	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr c, TransformPlayerToPokemon
	ld hl, Text_YouHaveTooManyPokemonSendOneBack
	call PrintText
	call WaitButton
	call PrepForPartyMenu
.reselect
	farcall PartyMenuSelect
	jr nc, .sent_mon_to_box
	ret

.fail_printtext
	call PrintText
	call WaitButton
	jr .reselect

.sent_mon_to_box
	ld a, MON_MOOD
	predef GetPartyParamLocation
	ld a, [hl]
	and MON_SPECIAL
	cp MON_IS_PLAYER
	ld hl, Text_SelectedPlayerMon
	jr z, .fail_printtext
	ld hl, Text_SelectedRentalMon
	cp MON_NO_BOX
	jr z, .fail_printtext

	farcall DepositCurPartyMon
	farcall FadeOutPalettes
	call ReturnToMapWithSpeechTextbox
	farcall FadeInPalettes
    ;fallthrough

TransformPlayerToPokemon:
	ld a, [wPlayerMonGroup]
    and a
    ret z

	ld a, [wPartyCount]
	ld [wCurPartyMon], a
	inc a
	ld [wPartyCount], a

	ld hl, wPartySpecies ; legacy stuff that hasn't been dealt with yet
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [wPlayerMonSpecies]
	ld [hli], a
	ld a, -1
	ld [hl], a ;loading the terminator into the next slot


	ld hl, wPartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, wPlayerName
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes

	ld hl, wPartyMonOT
	ld bc, PLAYER_NAME_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, wPlayerName
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes


	ld a, MON_GROUP
	predef GetPartyParamLocation
	ld d, h
	ld e, l
	ld hl, wPlayerMonGroup ;copying the player mon into the party
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes

	call SwapPlayerForm
	ld hl, Script_TransformPlayerToPokemon
	;fallthrough
TransformSuccess:
	call QueueScript
	ld a, 1
	ld [wFieldMoveSucceeded], a
	ret

TransformPlayerToHuman:
	ld hl, wPartyMon1Mood
	ld bc, PARTYMON_STRUCT_LENGTH
	ld d, 0
.find_player_mon
	ld a, [hl]
	and MON_SPECIAL
	cp MON_IS_PLAYER
	jr z, .found_player_mon
	add hl, bc
	inc d
	ld a, d
	cp PARTY_LENGTH
	ret nc
	jr .find_player_mon

.found_player_mon
	ld a, d
	ld [wCurPartyMon], a
	ld a, MON_GROUP
	predef GetPartyParamLocation
	ld de, wPlayerMonGroup 			;saving them back to the player mon
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes

	xor a
	ld [wPokemonWithdrawDepositParameter], a
	farcall RemoveMonFromPartyOrBox

	ld hl, Script_TransformPlayerToHuman
	jr TransformSuccess



SwapPlayerForm:
	ld a, [wPlayerOverworldStatus]
	xor PLAYER_IS_POKEMON ; swap the bit that says if you're transformed into a pokemon or not
	ld [wPlayerOverworldStatus], a
	ret

LoadPlayerSpeciesValues:
	ld hl, wPlayerMon
	predef PokemonToGroupSpeciesAndForm
	ld a, [wCurSpecies]
	ld [wScriptVar], a
	ret

Script_TransformPlayerToPokemon:
	special ReplaceKrisSprite
	callasm LoadPlayerSpeciesValues
	refreshscreen
	;musicfadeout
	cry 0
	waitsfx
	closetext
	end

Script_TransformPlayerToHuman:
	callasm LoadPlayerSpeciesValues
	refreshscreen
	;musicfadeout
	cry 0
	waitsfx
	closetext
	callasm SwapPlayerForm
	special ReplaceKrisSprite
	end


Text_YouHaveTooManyPokemonSendOneBack:
	text "You have too many pokemon in"
	line "your party to join it, so"
	cont "send one to the box first."
	done

Text_SelectedPlayerMon:
	text "How the hell did you manage"
	line "this? report your methods."
	done

Text_SelectedRentalMon:
	text "Rental Pokemon can't be"
	line "sent to your box."
	done