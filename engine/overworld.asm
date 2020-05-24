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
	ld hl, wPlayerOverworldStatus
	ld a, [wPlayerState]
	cp PLAYER_BIKE
	jr nz, .not_biking
	set 2, [hl]
	ret
.not_biking
	res 2, [hl]
	ret

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
	ld [hl], a ;sprite tile
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

GetOverworldPokemonSprite:
	pop af
	ld [wCurSpecies], a
	ld a, [hli]
	swap a
	and $f
	push af
	ld a, [hl] ; MAPOBJECT_COLOR2
	and $f
	ld [wCurGroup], a
	ld a, [hl]
	swap a
	and $f
	ld [wCurForm], a
	pop af
	ld hl, wUnknOBPals
	ld bc, 1 palettes
	rst AddNTimes
	ld d, h
	ld e, l
	ld a, [wTimeOfDayPal]
	call GetRelevantMonOverworldPalettes
	farcall ApplyPals

	jp GetPokemonOrPlayerOverworldSprite


GetSprite:: ; 1423c
	cp SPRITE_FOLLOWER
	jp z, GetFollowerSpriteAddresses
	cp SPRITE_PLAYER
	jr z, GetPlayerSpriteAddresses

	push af

	ld a, [hObjectStructIndexBuffer]
	call GetObjectStruct
	ld hl, OBJECT_MAP_OBJECT_INDEX
	add hl, bc
	ld a, [hl]
	call GetMapObject
	ld hl, MAPOBJECT_COLOR
	add hl, bc
	ld a, [hl]
	and $f
	cp PERSONTYPE_POKEMON
	jr z, GetOverworldPokemonSprite

	ld a, [hli]
	swap a
	and $f
	push hl
	ld hl, wUnknOBPals
	ld bc, 1 palettes
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl
	ld a, [hl] ; color 2
	farcall LoadNPCPalette
	farcall ApplyPals

	pop af
	;fallthrough
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

GetPlayerSpriteAddresses:
	ld a, [wPlayerOverworldStatus]
	bit 1, a ; is player riding a pokemon?
	jr nz, .riding_temp_follower
	bit 0, a ; is player a pokemon themselves?
	jr nz, .is_a_pokemon
	bit 2, a ; is the player biking or walking?

	ld d, BANK(PlayerSpriteTable)
	ld hl, PlayerSpriteTable
	ld a, 1
	jr nz, .biking
	xor a
.biking
	ld [wCurForm], a
	ld a, [wPlayerOverworldSprite]
	jr GetPlayerOverworldSprite

.is_a_pokemon
	ld hl, wPlayerMonGroup
	predef PokemonToGroupSpeciesAndForm
	jr GetPokemonOrPlayerOverworldSprite

.riding_temp_follower
	ld a, [wFollowerStatus]
	and TEMP_FOLLOWER_MASK
	swap a
	rlca
	dec a
	ld [wCurPartyMon], a
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	ld a, [wCurGroup]
	and a
	jr z, no_follower
	jr GetPokemonOrPlayerOverworldSprite

GetFollowerSpriteAddresses:
	ld a, [wFollowerStatus]
	bit FOLLOWER_ENABLE, a
	jr z, no_follower
	and TEMP_FOLLOWER_MASK
	jr z, .no_temp_follower
	swap a
	rlca
	ld b, a
.no_temp_follower
	ld a, [wFollowerStatus]
	and FOLLOWER_MASK
	jr z, no_follower
	cp b ; if the player is riding the temp follower, we should not have them be duplicated
	jr z, no_follower
	dec a
	ld [wCurPartyMon], a
	ld a, MON_GROUP_SPECIES_AND_FORM
	predef GetPartyParamLocation
	ld a, [wCurGroup]
	and a
	jr z, no_follower
	;fallthrough
GetPokemonOrPlayerOverworldSprite::
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
GetPlayerOverworldSprite:
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
