


_FollowerInteractScript::
    callasm CheckIfFollowerInteract
    iffalse JustEnd
    faceplayer
    opentext
	callasm CurPartyNicknameNameplate
	scall FollowerScripts
	jump FollowerCommandMenuScript


FollowerScripts:: ; we'll do our map specific special or mood based interactions here
	portrait 0
	cry 0

	writetext BorkText
	waitbutton
	;fallthrough
JustEnd::
	end

BorkText::
	text "Bork!"
	done

SelfInteractScript::
    copybytetovar wFollowerStairsType
    iftrue JustEnd
    copybytetovar wPlayerStairsType
    iftrue JustEnd
    opentext
	;fallthrough

FollowerCommandMenuScript:
    callasm FollowerCommandMenu
	;fallthrough
EndFollowerInteract::
    closeportrait
    closetext
    farjump StartMenuCallback


CheckIfFollowerInteract::
	xor a ;false
	ld [wScriptVar], a

	ld a, [wFollowerStairsType]
	and a
	ret nz
	ld a, [wPlayerStairsType]
	and a
	ret nz

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
	ld a, TRUE
	ld [wScriptVar], a
	ret

CurPartyNicknameNameplate::
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	farcall SkipPokemonNames
	ld d, h
	ld e, l
    call PrintNamePlate
	xor a
	ret

FollowerCommandMenu::
    ; fallthrough
PokemonPartyCommandMenu::
    xor a
    ld [wBuffer1], a ; intit this value as it'll be checked later

    ld bc, 0
    ld de, wStringBuffer1

    ld a, [wBaseFieldCapabilities]
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

	ld a, [wCenteredObject]
	ld h, a
	ld a, [hLastTalked]
	cp h

    ld hl, SwitchString
    call nz, AddToFollowerMenu

	ld a, [wCenteredObject]
	ld h, a
	ld a, [hLastTalked]
	cp h
	jr z, .follow_or_wait

    ld hl, LeadString
    call AddToFollowerMenu
	jr .stay

.follow_or_wait
	ld a, [wPlayerOverworldStatus]
	and PLAYER_PARTY_SPLIT
    ld hl, FollowLeadString
    call z, AddToFollowerMenu

	ld a, [wPlayerOverworldStatus]
	and PLAYER_PARTY_SPLIT
    ld hl, WaitLeadString
    call nz, AddToFollowerMenu


.stay
	ld a, [wCenteredObject]
	ld h, a
	ld a, [hLastTalked]
	cp h
	jr z, .fill_remaining_slots_with_no

	ld a, [wPlayerOverworldStatus]
	and PLAYER_PARTY_SPLIT
    ld hl, FollowStayString
    call nz, AddToFollowerMenu

	ld a, [wPlayerOverworldStatus]
	and PLAYER_PARTY_SPLIT
    ld hl, StayString
    call z, AddToFollowerMenu

    ;ld hl, PlayString
    ;call AddToFollowerMenu

.fill_remaining_slots_with_no
    ld hl, NoActionString
    call AddToFollowerMenu

    ld a, c
    cp 8
    jr c, .fill_remaining_slots_with_no

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
    cp NUM_FOLLOWER_WITHIN_MENU_ACTIONS + 1
    ret nc
    ld hl, FollowerCommandMenuActionTable
	rst JumpTable
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

NoActionString:
    db "-@", 0

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

WaitLeadString:
    db "Wait@", FOLLOWER_MENU_ACTION_LEAD

FollowLeadString:
    db "Follow@", FOLLOWER_MENU_ACTION_LEAD

StayString:
    db "Stay@", FOLLOWER_MENU_ACTION_STAY

FollowStayString:
    db "Follow@", FOLLOWER_MENU_ACTION_STAY

FollowerCommandMenuActionTable:
    dw NoFollowerMenuAction
    dw PlayFollowerMenuAction
    dw FlyFollowerMenuAction
    dw DigFollowerMenuAction
    dw TeleportFollowerMenuAction
    dw HealFollowerMenuAction
    dw LeadFollowerMenuAction
    dw SwitchFollowerMenuAction
    dw StayFollowerMenuAction

NoFollowerMenuAction:
    scf
    ret

PlayFollowerMenuAction:
    ret

StayFollowerMenuAction:
	call CheckSafeToSwichLeader
	jp c, PokemonPartyCommandMenu

	ld a, [wPlayerOverworldStatus]
	bit PLAYER_CONTROL_FOLLOWER_F, a

	ld hl, wMapGroup

	ld bc, wPlayerObjectMapGroup
	ld de, wFollowerObjectMapGroup

	;map group
	ld a, [hli]
	ld [de], a
	ld [bc], a
	inc de
	inc bc

	;map number
	ld a, [hl]
	ld [de], a
	ld [bc], a

	ld bc, wFollowerObject
	ld de, wFollowerStruct

	jr z, .got_it1
	ld bc, wPlayerObject
	ld de, wPlayerStruct
.got_it1

	ld a, [wPlayerOverworldStatus]
	xor PLAYER_PARTY_SPLIT
	ld [wPlayerOverworldStatus], a
	bit PLAYER_PARTY_SPLIT_F, a

	ld a, SPRITEMOVEDATA_FOLLOWING
	jr z, .got_it2
	ld a, SPRITEMOVEDATA_SPINRANDOM_SLOW
.got_it2
	ld hl, MAPOBJECT_MOVEMENT
	add hl, bc
	ld [hl], a

	ld hl, OBJECT_MOVEMENT_TYPE
	add hl, de
	ld [hl], a

	ld hl, OBJECT_STANDING_X
	add hl, de
	ld a, [hli]
	ld [wFollowXCoord], a
	ld a, [hl]
	ld [wFollowYCoord], a
	farjp StartFollowerFollowing

LeadFollowerMenuAction:
	call CheckSafeToSwichLeader
	jp c, PokemonPartyCommandMenu

	ld a, [wPlayerOverworldStatus]
	xor PLAYER_CONTROL_FOLLOWER
	ld [wPlayerOverworldStatus], a
	bit PLAYER_CONTROL_FOLLOWER_F, a

	ld hl, wMapGroup

	ld bc, wPlayerObjectMapGroup
	ld de, wFollowerObjectMapGroup
	jr z, .got_it
	ld bc, wFollowerObjectMapGroup
	ld de, wPlayerObjectMapGroup
.got_it

	;map group
	ld a, [hl]
	ld [de], a
	inc de
	ld a, [bc]
	inc bc
	ld [hli], a

	;map number
	ld a, [hl]
	ld [de], a
	inc de
	ld a, [bc]
	inc bc
	ld [hl], a


	ld a, PLAYER
	ld bc, wPlayerStruct
	ld de, wFollowerStruct

	jr z, .got_it1
	ld a, FOLLOWER
	ld bc, wFollowerStruct
	ld de, wPlayerStruct
.got_it1

	ld [wCenteredObject], a

	ld a, [wPlayerOverworldStatus]
	bit PLAYER_PARTY_SPLIT_F, a
	jr nz, .got_it2

	ld hl, OBJECT_STANDING_X
	add hl, bc
	ld a, [hli]
	ld [wFollowXCoord], a
	ld a, [hl]
	ld [wFollowYCoord], a

.got_it2
	ld a, [wFollowXCoord]
	sub 4
	ld [wXCoord], a
	ld a, [wFollowYCoord]
	sub 4
	ld [wYCoord], a

	ld hl, OBJECT_STANDING_X
	add hl, de
	ld a, [hli]
	ld [wFollowXCoord], a
	ld a, [hl]
	ld [wFollowYCoord], a


	ld a, MAPSETUP_SWITCH_LEADER
	;ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	ld a, 1
	farcall LoadMapStatus
	farjp StopScript

CheckSafeToSwichLeader::

	ld a, [wPlayerStandingTile]
	call .Check
	jr c, .print_unsafe

	ld a, [wFollowerStandingTile]
	call .Check
	jr c, .print_unsafe

	and a
	ret

.Check:
	cp COLL_TALL_GRASS
	jr z, .unsafe_location
	cp COLL_UNSAFE_FLOOR
	jr z, .unsafe_location
	call GetTileCollision
	cp LANDTILE
	jr nz, .unsafe_location
	and a
	ret

.print_unsafe
	ld hl, ProbablyNotString
	call PrintText
	call WaitButton
.unsafe_location
	scf
	ret



ProbablyNotString:
	text "I'm probably not in the best"
	next "place to do that right now."
	done

FlyFollowerMenuAction:
	farcall MonMenu_Fly
	cp MONSUBMENU_QUIT
	call nz, ReloadPokemonPartyCommandMenu
	;fallthrough
FinishFolloweMonAction:
	cp MONSUBMENU_QUIT
	jp nz, PokemonPartyCommandMenu
	ld a, b
	push af
	call ExitAllMenus
	pop af
	cp 4
	ret nz
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	ret

DigFollowerMenuAction:
    farcall MonMenu_Dig
	jr FinishFolloweMonAction

TeleportFollowerMenuAction:
    farcall MonMenu_Teleport
	jr FinishFolloweMonAction

HealFollowerMenuAction:
	ld a, [wCurPartyMon]
	push af
	call PrepForPartyMenu
    farcall MonMenu_Softboiled_MilkDrink
	call ReloadPokemonPartyCommandMenu
	pop af
	ld [wCurPartyMon], a
	jp PokemonPartyCommandMenu

SwitchFollowerMenuAction:
	call PrepForPartyMenu
	farcall PartyMenuSelect
	jr c, .didnt_select 	;carry is set if a selection wasn't made, making sure to set the follower to what it was if that selection wasn't made
	ld a, [wCurPartyMon]
	farcall SetFollower
	call ReturnToMapWithSpeechTextbox
	jp FollowerCommandMenu

.didnt_select
	ld a, [wFollowerStatus]
	and FOLLOWER_MASK
	dec a
	ld [wCurPartyMon], a
	call ReloadPokemonPartyCommandMenu
	jp PokemonPartyCommandMenu


PrepForPartyMenu:
	call DisableSpriteUpdates
	xor a
	ld [wPartyMenuActionText], a
	call ClearBGPalettes
	farcall InitPartyMenuLayout
	call ApplyTilemapInVBlank
	call SetPalettes
	call DelayFrame
	ret

ReloadPokemonPartyCommandMenu:
	push hl
	push bc
	push de
	push af
	call ReturnToMapWithSpeechTextbox

	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	call GetBaseData

	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	farcall SkipPokemonNames
	ld d, h
	ld e, l
    call PrintNamePlate
    xor a ; neutral
    farcall Portrait

	pop af
	pop de
	pop bc
	pop hl
	ret

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
