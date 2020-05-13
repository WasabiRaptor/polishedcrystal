_ReplaceKrisSprite:: ; 14135
	call GetPlayerSprite
	ld a, [wPlayerSprite]
	ldh [hUsedSpriteIndex], a
	xor a
	ldh [hUsedSpriteTile], a
	ld hl, wSpriteFlags
	res 5, [hl]
	call GetUsedSprite
	ld a, $10
	ldh [hUsedSpriteTile], a
	ld a, [wFollowerSprite]
	ldh [hUsedSpriteIndex], a
	call GetUsedSprite
	farcall LoadSpecialMapOBPalette
	farcall ApplyPals
	jp UpdateTimePals
; 14146

GetPlayerSprite: ; 14183
; Get Chris or Kris's sprite.
	ld hl, .Chris
	ld a, [wPlayerSpriteSetupFlags]
	bit 2, a
	jr nz, .go
	ld a, [wPlayerOverworldSprite]
	bit 0, a
	jr z, .go
	ld hl, .Kris

.go
	ld a, [wPlayerState]
	ld c, a
.loop
	ld a, [hli]
	cp c
	jr z, .good
	inc hl
	inc hl
	cp $ff
	jr nz, .loop

; Any player state not in the array defaults to Chris's sprite.
	xor a ; ld a, PLAYER_NORMAL
	ld [wPlayerState], a
	ld a, SPRITE_CHRIS
	ld b, SPRITE_FOLLOWER
	ld c, 0
	ld d, 1
	jr .finish

.good
	ld a, [hli]
	ld b, [hl]
	cp SPRITE_FOLLOWER
	ld c, 0
	ld d, 1
	jr nz, .finish
	ld c, 1
	ld d, 0

.finish
	ld [wPlayerSprite], a
	ld [wPlayerObjectSprite], a
	ld a, b
	ld [wFollowerSprite], a
	ld [wFollowerObjectSprite], a
	ld a, c
	ld [wPlayerPalette], a
	ld [wPlayerObjectColor], a
	ld a, d
	ld [wFollowerPalette], a
	ld [wFollowerObjectColor], a
	ret

.Chris:
	db PLAYER_NORMAL,    SPRITE_CHRIS, 				SPRITE_FOLLOWER
	db PLAYER_BIKE,      SPRITE_CHRIS_BIKE, 		SPRITE_FOLLOWER
	db PLAYER_SURF,      SPRITE_FOLLOWER, 			SPRITE_CHRIS_SURF
	db PLAYER_SURF_PIKA, SPRITE_SURFING_PIKACHU, 	SPRITE_CHRIS_SURF
	db $ff

.Kris:
	db PLAYER_NORMAL,    SPRITE_KRIS, 				SPRITE_FOLLOWER
	db PLAYER_BIKE,      SPRITE_KRIS_BIKE, 			SPRITE_FOLLOWER
	db PLAYER_SURF,      SPRITE_FOLLOWER, 			SPRITE_KRIS_SURF
	db PLAYER_SURF_PIKA, SPRITE_SURFING_PIKACHU, 	SPRITE_KRIS_SURF
	db $ff
; 141c9


MapCallbackSprites_LoadUsedSpritesGFX: ; 14209
	ld a, MAPCALLBACK_SPRITES
	call RunMapCallback
ReloadVisibleSprites::
	push hl
	push de
	push bc
	call GetPlayerSprite
	xor a
	ldh [hUsedSpriteIndex], a
	call ReloadSpriteIndex
	ld a, 1
	ldh [hUsedSpriteIndex], a
	call ReloadSpriteIndex
	call LoadEmoteGFX
	pop bc
	pop de
	pop hl
	ret

ReloadSpriteIndex::
; Reloads sprites using hUsedSpriteIndex.
; Used to reload variable sprites
	ld hl, wObjectStructs
	ld de, OBJECT_STRUCT_LENGTH
	push bc
	ldh a, [hUsedSpriteIndex]
	ld b, a
	xor a
.loop
	ldh [hObjectStructIndexBuffer], a
	ld a, [hl]
	and a
	jr z, .done
	bit 7, b
	jr z, .continue
	cp b
	jr nz, .done
.continue
	push hl
	call GetSpriteVTile
	pop hl
	push hl
	inc hl
	inc hl
	ld [hl], a
	pop hl
.done
	add hl, de
	ldh a, [hObjectStructIndexBuffer]
	inc a
	cp NUM_OBJECT_STRUCTS
	jr nz, .loop
	pop bc
	ret

LoadEmoteGFX::
	ld a, [wSpriteFlags]
	bit 6, a
	ret nz

	ld c, EMOTE_SHADOW
	call LoadEmote
	call GetMapPermission
	call CheckOutdoorMapOrPerm5
	jr z, .outdoor
	ld c, EMOTE_BOULDER_DUST
	jp LoadEmote

.outdoor
	ld c, EMOTE_SHAKING_GRASS
	call LoadEmote
	ld c, EMOTE_PUDDLE_SPLASH
	jp LoadEmote
; 14236



SafeGetSprite: ; 14236
	push hl
	call GetSprite
	pop hl
	ret
; 1423c

GetSprite:: ; 1423c
	call GetMonSprite
	ret c

	cp SPRITE_FOLLOWER
	jr z, GetFollowerSpriteAddresses
NoFollower:
	ld hl, SpriteHeaders ; address
	dec a
	ld c, a
	ld b, 0
	ld a, NUM_SPRITEHEADER_FIELDS
	rst AddNTimes
	; load the address into de
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	; load the sprite bank into both b and h
	ld a, [hli]
	ld b, a
	; load the sprite type into l
	ld l, [hl]
	ld h, a
	; load the length into c
	ld c, 15
	ld a, l
	cp BIG_GYARADOS_SPRITE
	ret z
	ld c, 16
	ret
; 14259
GetFollowerSpriteAddresses:
	ld a, [wFollowerStatus]
	bit FOLLOWER_ENABLE, a
	jr z, no_follower
	and TEMP_FOLLOWER_MASK
	jr z, .no_Forced_Follower
	swap a
	rlca
	jr .got_follower
.no_Forced_Follower
	ld a, [wFollowerStatus]
	and FOLLOWER_MASK
	jr z, no_follower
.got_follower
	dec a
	ld [wCurPartyMon], a
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	ld a, [wCurGroup]
	and a
	jr z, no_follower
	;fallthrough
GetPokemonOverworldSprite::
	ld a, [wCurGroup]
	ld hl, RegionalOverworldSpriteTable
	ld bc, 3
	rst AddNTimes
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	;we now have the pointer table for that region
	ld a, [wCurSpecies]
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, d
	call GetFarHalfword

	;we should now have the pointer table for that species
	ld a, [wCurForm]
	ld bc, 3 ;three bytes long
	rst AddNTimes
	ld a, d
	call GetFarByte
	ld b, a ; load the sprite bank into b
	inc hl
	ld a, d
	call GetFarHalfword

	; load the address into de
	ld d, h
	ld e, l
	ld h, b ; load the sprite bank into h
	ld l, WALKING_SPRITE ; load the sprite type into l
	ld c, 16 ; load the length into c
	ret

no_follower:
	ld a, SPRITE_FOLLOWER
	jp NoFollower

INCLUDE "data/pokemon/regional_overworld_sprite_table.asm"

GetMonSprite: ; 14259
; Return carry if a monster sprite was loaded.

	cp SPRITE_POKEMON
	jr c, .Normal
	cp SPRITE_MON_DOLL_1
	jr z, .MonDoll1
	cp SPRITE_MON_DOLL_2
	jr z, .MonDoll2
	cp SPRITE_DAYCARE_MON_1
	jr z, .BreedMon1
	cp SPRITE_DAYCARE_MON_2
	jr z, .BreedMon2
	cp SPRITE_GROTTO_MON
	jr z, .GrottoMon
	cp SPRITE_VARS
	jr nc, .Variable
	jr .Icon

.Normal:
	and a
	ret

.Icon:
	sub SPRITE_POKEMON
	ld e, a
	ld d, 0
	ld hl, SpriteMons
	add hl, de
	ld a, [hl]
	jr .Mon

.BreedMon1
	ld a, [wBreedMon1Species]
	jr .Mon

.BreedMon2
	ld a, [wBreedMon2Species]
	jr .Mon

.GrottoMon
	farcall GetHiddenGrottoContents
	ld a, [hl]
	jr .Mon

.MonDoll1
	ld a, [wLeftOrnament]
	farcall GetDecorationSpecies
	jr .Mon

.MonDoll2
	ld a, [wRightOrnament]
	farcall GetDecorationSpecies

.Mon:
	ld e, a
	and a
	jr z, .NoBreedmon

	farcall LoadOverworldMonIcon

	lb hl, 0, MON_SPRITE
	scf
	ret

.Variable:
	sub SPRITE_VARS
	ld e, a
	ld d, 0
	ld hl, wVariableSprites
	add hl, de
	ld a, [hl]
	and a
	jp nz, GetMonSprite

.NoBreedmon:
	ld a, 1
	lb hl, 0, MON_SPRITE
	and a
	ret
; 142a7


_DoesSpriteHaveFacings:: ; 142a7
; Checks to see whether we can apply a facing to a sprite.
; Returns zero for Pokémon sprites, carry for the rest.
	cp SPRITE_POKEMON
	jr c, .facings
	cp SPRITE_VARS
	jr nc, .facings
	scf
	ret

.facings
	and a
	ret
; 142c4


_GetSpritePalette:: ; 142c4
	ld a, c
	call GetMonSprite
	jr c, .is_pokemon

	ld hl, SpriteHeaders + SPRITEHEADER_PALETTE
	dec a
	ld c, a
	ld b, 0
	ld a, NUM_SPRITEHEADER_FIELDS
	rst AddNTimes
	ld c, [hl]
	ret

.is_pokemon
	ld a, [wMapGroup]
	cp GROUP_KRISS_HOUSE_2F
	jr nz, .not_doll
	ld a, [wMapNumber]
	cp MAP_KRISS_HOUSE_2F
	jr nz, .not_doll
	farcall GetMonIconPalette
	ld c, a
	ret

.not_doll
	;cp GROUP_ROUTE_34
	;jr nz, .not_daycare
	;ld a, [wMapNumber]
	;cp MAP_ROUTE_34
	;jr nz, .not_daycare
	jr .not_daycare

	farcall GetMonIconPalette
	cp PAL_OW_GRAY
	ld c, PAL_OW_ROCK
	ret z
	cp PAL_OW_PINK
	ld c, PAL_OW_PLAYER
	ret z
	cp PAL_OW_TEAL
	ld c, PAL_OW_GREEN
	ret z
	ld c, a
	ret

.not_daycare
	ld c, PAL_OW_PLAYER
	ret
; 142db


GetUsedSprite:: ; 143c8
	ldh a, [hUsedSpriteIndex]
	call SafeGetSprite
	ldh a, [hUsedSpriteTile]
	call .GetTileAddr
	push hl
	push de
	push bc
	ld a, [wSpriteFlags]
	bit 7, a
	jr nz, .skip
	call .CopyToVram

.skip
	pop bc
	ld l, c
	ld h, $0
rept 4
	add hl, hl
endr
	pop de
	add hl, de
	ld d, h
	ld e, l
	pop hl

	ld a, [wSpriteFlags]
	bit 6, a
	ret nz

	ldh a, [hUsedSpriteIndex]
	call _DoesSpriteHaveFacings
	ret c

	ld a, [wSpriteFlags]
	bit 5, a
	ld a, h
	jr nz, .vram1
	add $4
.vram1
	add $4
	ld h, a

.CopyToVram:
	ldh a, [rVBK]
	push af
	ld a, [wSpriteFlags]
	bit 5, a
	ld a, $0
	jr z, .bankswitch
	inc a
.bankswitch
	ldh [rVBK], a
	call Get2bpp
	pop af
	ldh [rVBK], a
	ret

.GetTileAddr:
; Return the address of tile (a) in (hl).
	and $7f
	ld l, a
	ld h, 0
rept 4
	add hl, hl
endr
	ld a, l
	add VTiles0 % $100
	ld l, a
	ld a, h
	adc VTiles0 / $100
	ld h, a
	ret

LoadEmote:: ; 1442f
; Get the address of the pointer to emote c.
	ld a, c
	ld bc, 6
	ld hl, EmotesPointers
	rst AddNTimes
; Load the emote address into de
	ld e, [hl]
	inc hl
	ld d, [hl]
; load the length of the emote (in tiles) into c
	inc hl
	ld c, [hl]
	swap c
; load the emote pointer bank into b
	inc hl
	ld b, [hl]
; load the VRAM destination into hl
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
; if the emote has a length of 0, do not proceed (error handling)
	ld a, c
	and a
	ret z
; load into vram0
	jp Get2bpp


INCLUDE "data/sprites/emotes.asm"

INCLUDE "data/sprites/sprite_mons.asm"

INCLUDE "data/sprites/sprites.asm"
