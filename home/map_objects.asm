; Functions handling map objects.

; 180e

GetSpriteVTile:: ; 180e
	push hl
	push de
	push bc
	ldh [hUsedSpriteIndex], a
	farcall GetSprite
	ld hl, wSpriteFlags
	res 5, [hl]
	; SPRITE_BIG_GYARADOS and SPRITE_SAILBOAT use the last object_struct
	; (SPRITE_BIG_GYARADOS has more than 12 tiles, and SPRITE_SAILBOAT
	; needs to be in VRAM1)
	ld a, [hUsedSpriteIndex]
	cp SPRITE_BIG_GYARADOS
	jr z, .use_last_struct
	cp SPRITE_SAILBOAT
	jr z, .use_last_struct
	ld a, [hObjectStructIndexBuffer]
	jr .got_sprite_tile
.use_last_struct
	ld a, NUM_OBJECT_STRUCTS - 1
.got_sprite_tile
	cp FIRST_VRAM1_OBJECT_STRUCT
	jr c, .continue
	set 5, [hl]
	sub FIRST_VRAM1_OBJECT_STRUCT
.continue
	add a, a
	add a, a
	ld b, a
	add a, b
	add a, b
	add a, b; add a fourth frame to the thing?
	ldh [hUsedSpriteTile], a
	push af
	farcall GetUsedSprite
	pop af
	ld b, a
	xor a
	ld a, b
	ld hl, wSpriteFlags
	bit 5, [hl]
	jr nz, .using_vbk1
	or $80
.using_vbk1
	pop bc
	pop de
	pop hl
	ret

DoesSpriteHaveFacings:: ; 1836
	push de
	push hl

	ld b, a
	ldh a, [hROMBank]
	push af
	ld a, BANK(_DoesSpriteHaveFacings)
	rst Bankswitch

	ld a, b
	call _DoesSpriteHaveFacings
	ld c, a

	pop de
	ld a, d
	rst Bankswitch

	pop hl
	pop de
	ret
; 184a

GetPlayerStandingTile:: ; 184a
	ld a, OBJECT_STANDING_TILE
	predef GetCenteredObjectStructParam
	call GetTileCollision
	ld b, a
	ret
; 1852

CheckOnWater:: ; 1852
	ld a, OBJECT_STANDING_TILE
	predef GetCenteredObjectStructParam
	call GetTileCollision
	sub WATERTILE
	ret z
	and a
	ret
; 185d

GetTileCollision:: ; 185d
; Get the collision type of tile a.

	push de
	push hl

	ld hl, TileCollisionTable
	ld e, a
	ld d, 0
	add hl, de

	ldh a, [hROMBank]
	push af
	ld a, BANK(TileCollisionTable)
	rst Bankswitch
	ld e, [hl]
	pop af
	rst Bankswitch

	ld a, e
	and $f ; lo nybble only

	pop hl
	pop de
	ret
; 1875

CheckStandingOnEntrance:: ; 18c3
	ld a, OBJECT_STANDING_TILE
	predef GetCenteredObjectStructParam
	cp COLL_DOOR
	ret z
	cp COLL_STAIRCASE
	ret z
	cp COLL_CAVE
	ret
; 18d2

GetMapObject:: ; 18d2
; Return the location of map object a in bc.
	ld hl, wMapObjects
	ld bc, OBJECT_LENGTH
	rst AddNTimes
	ld b, h
	ld c, l
	ret
; 18de

CheckObjectVisibility:: ; 18de
; Sets carry if the object is not visible on the screen.
	ldh [hMapObjectIndexBuffer], a
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp -1
	jr z, .not_visible
	ldh [hObjectStructIndexBuffer], a
	call GetObjectStruct
	and a
	ret

.not_visible
	scf
	ret
; 18f5

CheckObjectTime:: ; 18f5
	ld hl, MAPOBJECT_CYCLE_START_HOUR
	add hl, bc
	ld a, [hl]
	and MAPOBJECT_HOUR_MASK
	ld d, a

	ld hl, MAPOBJECT_CYCLE_END_HOUR
	add hl, bc
	ld a, [hl]
	and MAPOBJECT_HOUR_MASK
	ld e, a

	ld a, [wHoursRemaining]
	bit MAPOBJECT_DAILY_F, e
	jr z, .skip1
	ld a, [hHours]
.skip1
	cp e
	jr c, .no ; if the hours remaining is less than the end hour, then the object shouldn't be there, c is never set for 0 cp 0 so it is always exist

	ld a, [wHoursRemaining]

	bit MAPOBJECT_DAILY_F, e
	jr z, .skip2
	ld a, [hHours]
.skip2

	ld e, a ; put hours remaining in e
	ld a, d ; put start hour in a
	cp e
	jr c, .no ; if the start hour is less than the hours remaining, don't spawn the object so as long as the hour is greater than the number of hours in the cycle, its always exist

.yes
	and a
	ret

.no
	scf
	ret
; 194d

_CopyObjectStruct:: ; 1956
	ldh [hMapObjectIndexBuffer], a
	call UnmaskObject
	ldh a, [hMapObjectIndexBuffer]
	call GetMapObject
	farjp CopyObjectStruct
; 1967

ApplyDeletionToMapObject:: ; 1967
	ldh [hMapObjectIndexBuffer], a
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	cp -1
	ret z ; already hidden
	ld [hl], -1
	push af
	call .CheckStopFollow
	pop af
	call GetObjectStruct
	farjp DeleteMapObject

.CheckStopFollow:
	ld hl, wObjectFollow_Leader
	cp [hl]
	jr z, .ok
	ld hl, wObjectFollow_Follower
	cp [hl]
	ret nz
.ok
	farcall StopFollow
	ld a, NO_FOLLOWER
	ld [wObjectFollow_Leader], a
	ld [wObjectFollow_Follower], a
	ret
; 199f

DeleteObjectStruct:: ; 199f
	call ApplyDeletionToMapObject
	jp MaskObject
; 19a6

CopyPlayerObjectTemplate:: ; 19a6
	push hl
	call GetMapObject
	ld d, b
	ld e, c
	ld a, -1
	ld [de], a
	inc de
	pop hl
	ld bc, OBJECT_LENGTH - 1
	rst CopyBytes
	ret
; 19b8

DeleteCast::
	call GetMapObject
	ld hl, MAPOBJECT_OBJECT_STRUCT_ID
	add hl, bc
	ld a, [hl]
	push af
	ld [hl], -1
	inc hl
	ld bc, OBJECT_LENGTH - 1
	xor a
	call ByteFill
	pop af
	cp -1
	ret z
	cp $d
	ret nc
	ld b, a
	ld a, [wObjectFollow_Leader]
	cp b
	jr nz, .ok
	ld a, NO_FOLLOWER
	ld [wObjectFollow_Leader], a
.ok
	ld a, b
	call GetObjectStruct
	farjp DeleteMapObject

LoadMovementDataPointer:: ; 19e9
; Load the movement data pointer for person a.
	ld [wMovementPerson], a
	ldh a, [hROMBank]
	ld [wMovementDataPointer], a
	ld a, l
	ld [wMovementDataPointer + 1], a
	ld a, h
	ld [wMovementDataPointer + 2], a

	ld a, [wMovementPerson]
	call CheckObjectVisibility
	ret c

	ld hl, OBJECT_MOVEMENT_TYPE
	add hl, bc
	ld [hl], SPRITEMOVEDATA_SCRIPTED

	ld hl, OBJECT_STEP_TYPE
	add hl, bc
	ld [hl], STEP_TYPE_00

	ld hl, wVramState
	set 7, [hl]
	and a
	ret
; 1a13

FindFirstEmptyObjectStruct:: ; 1a13
; Returns the index of the first empty object struct in A and its address in HL, then sets carry.
; If all object structs are occupied, A = 0 and Z is set.
; Preserves BC and DE.
	push bc
	push de
	ld hl, wObjectStructs + (OBJECT_STRUCT_LENGTH * 2)
	ld de, OBJECT_STRUCT_LENGTH
	ld c, NUM_OBJECT_STRUCTS
.loop
	ld a, [hl]
	and a
	jr z, .break
	add hl, de
	dec c
	jr nz, .loop
	xor a
	jr .done

.break
	ld a, NUM_OBJECT_STRUCTS
	sub c
	scf

.done
	pop de
	pop bc
	ret
; 1a2f

GetSpriteMovementFunction:: ; 1a2f
	ld hl, OBJECT_MOVEMENT_TYPE
	add hl, bc
	ld a, [hl]
	cp NUM_SPRITEMOVEDATA
	jr c, .ok
	xor a

.ok
	ld hl, SpriteMovementData
	ld e, a
	ld d, 0
rept SPRITEMOVEDATA_FIELDS
	add hl, de
endr
	ld a, [hl]
	ret
; 1a47

GetInitialFacing:: ; 1a47
	push bc
	push de
	ld e, a
	ld d, 0
	ld hl, SpriteMovementData + 1 ; init facing
rept SPRITEMOVEDATA_FIELDS
	add hl, de
endr
	ld a, BANK(SpriteMovementData)
	call GetFarByte
	add a
	add a
	and $c
	pop de
	pop bc
	ret
; 1a61

CopySpriteMovementData:: ; 1a61
	ld l, a
	ldh a, [hROMBank]
	push af
	ld a, BANK(SpriteMovementData)
	rst Bankswitch
	ld a, l
	push bc

	call .CopyData

	pop bc
	pop af
	rst Bankswitch

	ret
; 1a71

.CopyData: ; 1a71
	ld hl, OBJECT_MOVEMENT_TYPE
	add hl, de
	ld [hl], a

	push de
	ld e, a
	ld d, 0
	ld hl, SpriteMovementData + 1 ; init facing
rept SPRITEMOVEDATA_FIELDS
	add hl, de
endr
	ld b, h
	ld c, l
	pop de

	ld a, [bc]
	inc bc
	rlca
	rlca
	and %00001100
	ld hl, OBJECT_DIRECTION
	add hl, de
	ld [hl], a

	ld a, [bc]
	inc bc
	ld hl, OBJECT_ACTION
	add hl, de
	ld [hl], a

	ld a, [bc]
	inc bc
	ld hl, OBJECT_FLAGS1
	add hl, de
	ld [hl], a

	ld a, [bc]
	inc bc
	ld hl, OBJECT_FLAGS2
	add hl, de
	ld [hl], a

	ld a, [bc]
	inc bc
	ld hl, OBJECT_PALETTE
	add hl, de
	ld [hl], a
	ret
; 1aae

_GetMovementByte:: ; 1aae
; Switch to the movement data bank
	ldh a, [hROMBank]
	push af
	ld a, [hli]
	rst Bankswitch
; Load the current script byte as given by OBJECT_MOVEMENT_BYTE_INDEX, and increment OBJECT_MOVEMENT_BYTE_INDEX
	ld a, [hli]
	ld d, [hl]
	ld hl, OBJECT_MOVEMENT_BYTE_INDEX
	add hl, bc
	add [hl]
	ld e, a
	ld a, d
	adc 0
	ld d, a
	inc [hl]
	ld a, [de]
	ld h, a
	pop af
	rst Bankswitch

	ld a, h
	ret
; 1ac6

UpdateSprites:: ; 1ad2
	ld a, [wVramState]
	bit 0, a
	ret z

	farcall UpdateMapObjectDataAndSprites
	farjp _UpdateSprites
; 1ae5

GetObjectStruct:: ; 1ae5
	ld bc, OBJECT_STRUCT_LENGTH
	ld hl, wObjectStructs
	rst AddNTimes
	ld b, h
	ld c, l
	ret
; 1af1

DoesObjectHaveASprite:: ; 1af1
	ld hl, OBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	and a
	ret
; 1af8

SetSpriteDirection:: ; 1af8
	; preserves other flags
	push af
	ld hl, OBJECT_DIRECTION
	add hl, bc
	ld a, [hl]
	and %11110011
	ld e, a
	pop af
	and %00001100
	or e
	ld [hl], a
	ret
; 1b07

GetSpriteDirection:: ; 1b07
	ld hl, OBJECT_DIRECTION
	add hl, bc
	ld a, [hl]
	and %00001100
	ret
; 1b0f
