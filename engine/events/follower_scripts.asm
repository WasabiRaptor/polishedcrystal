


_FollowerInteractScript::
    copybytetovar wPlayerStairsType
    iftrue EndFollowerInteract
    faceplayer
    opentext
    callasm FollowerCommandMenu

EndFollowerInteract::
    closeportrait
    closetext
    end

FollowerCommandMenu:
	ld a, [wFollowerStatus]
	bit FOLLOWER_ENABLE, a
	ret z
	and TEMP_FOLLOWER_MASK
	jr z, .no_Forced_Follower
	rlca
	swap a
	jr .got_follower
.no_Forced_Follower
	ld a, [wFollowerStatus]
	and FOLLOWER_MASK
	ret z
.got_follower
	dec a
	ld [wCurPartyMon], a
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	ld a, [wCurGroup]
	and a
    ret z
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	farcall SkipPokemonNames
	ld d, h
	ld e, l
    call PrintNamePlate
    ld a, 1 ; happy
    farcall Portrait

    ld a, [wCurSpecies]
    call PlayCry
    xor a ; neutral
    farcall Portrait
    ; fallthrough
PokemonPartyCommandMenu::
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation

    call GetBaseData
    xor a
    ld [wBuffer1], a ; intit this value as it'll be checked later

    ld a, [wBaseFieldCapabilities]
    and FIELD_FLY | FIELD_DIG | FIELD_TELEPORT | FIELD_HEAL
    ld hl, FollowerPetCommandMenuDataHeader
    jr z, .Got_menu
    ld bc, 0
    ld de, wStringBuffer1

    ld hl, FlyString
    and FIELD_FLY
    call nz, AddToFollowerMenu

    ld a, [wBaseFieldCapabilities]
    ld hl, DigString
    and FIELD_DIG
    call nz, AddToFollowerMenu

    ld a, [wBaseFieldCapabilities]
    ld hl, TeleportString
    and FIELD_TELEPORT
    call nz, AddToFollowerMenu

    ld a, [wBaseFieldCapabilities]
    ld hl, HealString
    and FIELD_HEAL
    call nz, AddToFollowerMenu

    ld hl, SwitchString
    call AddToFollowerMenu

    ld hl, LeadString
    call AddToFollowerMenu

    ld hl, StayString
    call AddToFollowerMenu

.fill_remaining_slots_with_pet
    ld hl, PlayString
    call AddToFollowerMenu

    ld a, c
    cp 8
    jr c, .fill_remaining_slots_with_pet

    ld hl, FollowerCommandMenuDataHeader
.Got_menu
	call LoadMenuDataHeader
	call InitVariableWidthText
	call _2DMenu
	jr c, .pressed_b
    dec a
    ld c, a
    ld b, 0
    ld hl, wBuffer1
    ld a, [hl]
    and a
    jr z, .pressed_b
    add hl, bc
    ld a, [hl]
	ld [wScriptVar], a ; output menu action
    ret

.pressed_b
	xor a
	ld [wScriptVar], a
	ret

AddToFollowerMenu:
    ld a, [hli]
    ld [de], a
    inc de
    cp "@"
    jr z, .done
    jr AddToFollowerMenu
.done
    ld a, [hl]
    push hl
    ld hl, wBuffer1
    add hl, bc
    ld [hl], a
    pop hl
    inc c
    ret



FlyString:
    db "Fly@", FOLLOWER_MENU_ACTION_FLY

DigString:
    db "Dig@", FOLLOWER_MENU_ACTION_DIG

TeleportString:
    db "Warp@", FOLLOWER_MENU_ACTION_TELEPORT

HealString:
    db "Heal@", FOLLOWER_MENU_ACTION_HEAL

PlayString:
    db "Play@", FOLLOWER_MENU_ACTION_PLAY

SwitchString:
    db "Swap@", FOLLOWER_MENU_ACTION_SWITCH

LeadString:
    db "Lead@", FOLLOWER_MENU_ACTION_LEAD

StayString:
    db "Stay@", FOLLOWER_MENU_ACTION_STAY

FollowerCommandMenuDataHeader:
	db BACKUP_TILES ; flags
	db 13, 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 2, 4 ; rows, columns
	db 4 ; spacing
	dba wStringBuffer1
	dbw BANK(.MenuData2), 0

FollowerPetCommandMenuDataHeader:
	db BACKUP_TILES ; flags
	db 13, 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 2, 6 ; rows, columns
	db 3 ; spacing
	dba PetStrings
	dbw BANK(.MenuData2), 0


MemeFollowerPetCommandMenuDataHeader:
	db BACKUP_TILES ; flags
	db (13-4), 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 4, 6 ; rows, columns
	db 3 ; spacing
	dba PetStrings
	dbw BANK(.MenuData2), 0


MemeFollowerPetCommandMenuDataHeader2:
	db BACKUP_TILES ; flags
	db (13-12), 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 8, 6 ; rows, columns
	db 3 ; spacing
	dba PetStrings
	dbw BANK(.MenuData2), 0

PetStrings:
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
