EditPartyMon::
	; bc = party mon selection (0000 - 0005)
	call ClearSprites
	ld a, c
	ld [wCurPartyMon], a
	farcall CopyPkmnToTempMon
	ld a, [wTempMonForm]
	and FORM_MASK
	ld [wEditorFormNumber], a
Page1:
	call ClearTileMap
	call DelayFrame
	; setup frontpic
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call ByteFill
	hlcoord 13, 0
	farcall Pokedex_PlaceFrontpicAtHL
	; place borders
	hlcoord 0, 7
	ld bc, SCREEN_WIDTH
	ld a, "─"
	call ByteFill
	hlcoord 12, 0
	ld b, 7
	ld a, "│"
	ld de, SCREEN_WIDTH
.vertfill
	ld [hl], a
	add hl, de
	dec b
	jr nz, .vertfill
	hlcoord 12, 7
	ld [hl], "┴"
	; place symbols
	hlcoord 1, 1
	ld [hl], "№"
	hlcoord 5, 1
	ld [hl], "<COLON>" ; bolder than the normal : tile
	hlcoord 1, 3
	ld [hl], "<LV>"
	hlcoord 6, 3
	ld [hl], "+"
	hlcoord 9, 15
	ld [hl], "+"
	hlcoord 13, 15
	ld [hl], "-"
	; place constant text
	VWTextStart $80
	hlcoord 1, 9
	ld de, .STATUS
	call PlaceString
	hlcoord 1, 11
	ld de, .ITEM
	call PlaceString
	hlcoord 1, 13
	ld de, .ABILITY
	call PlaceString
	hlcoord 1, 15
	ld de, .NATURE
	call PlaceString
	; initialize cursor
	ld hl, .page1CursorStart
	ld a, h
	ld [wEditorCursorPosition], a
	ld a, l
	ld [wEditorCursorPosition+1], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], "▲"
	ld bc, SCREEN_WIDTH*2
	add hl, bc
	ld [hl], "▼"
	; initialize numbers etc
	call .CalcDex ; calls DrawSpecies
	call .DrawLevel
	call .DrawExp
.mainloop:
	call DelayFrame
	call GetJoypad
	ldh a, [hJoyPressed]
	and a
	jr z, .mainloop
	bit D_RIGHT_F, a
	jr nz, .right
	bit D_LEFT_F, a
	jr nz, .left
	bit D_UP_F, a
	jr nz, .up
	bit D_DOWN_F, a
	jr nz, .down
	bit B_BUTTON_F, a
	jp nz, CloseEditor
	jr .mainloop

.left ; put offset in de
	ld de, -8
	jr .updatecursor
.right
	ld de, 8
.updatecursor
	; get current cursor table index
	ld a, [wEditorCursorPosition]
	ld h, a
	ld a, [wEditorCursorPosition+1]
	ld l, a
	; clear current cursor position
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], " "
	ld bc, SCREEN_WIDTH * 2
	add hl, bc
	ld [hl], " "
	pop hl
	; draw new cursor position
	add hl, de ; +8 or -8, not caring about cy
	ld a, h
	ld [wEditorCursorPosition], a
	ld a, l
	ld [wEditorCursorPosition+1], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], "▲"
	add hl, bc
	ld [hl], "▼"
	; back to main loop
	jr .mainloop

.up
	ld d, 1
	jr .updatevalue
.down
	ld d, 0
.updatevalue
	; get current cursor table index
	ld a, [wEditorCursorPosition]
	ld h, a
	ld a, [wEditorCursorPosition+1]
	ld l, a
	inc hl
	inc hl
	; address of value
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	; amount to inc/dec by
	ld a, [hli]
	ld e, a
	; max value
	ld a, [hli]
	; prepare to inc/dec
	push hl ; get bc into hl
	ld h, b
	ld l, c
	ld c, e ; amount is now in c instead
	ld e, a ; max is now in e instead
	ld a, [hl]
	ld b, a ; value in b
	ld a, e ; is there a max value at all?
	and a
	jr z, .wrap ; skip a bunch of complicated math
	ld a, d
	and a
	jr z, .decrease
;increase
	ld a, b
	add a, c
	jr nc, .notoverflow
	ld a, 255 ; overflow clamp (so that the next check knows it's high)
.notoverflow
	cp e ; max value
	jr c, .updatechanged
	ld a, e ; max clamp
	jr .updatechanged
.decrease
	ld a, b
	sub c
	jr nc, .updatechanged
	ld a, 0 ; underflow clamp
	jr .updatechanged
	
.wrap ; simpler math, doesn't need to check bounds or clamp anything
	ld a, d
	and a
	jr z, .decreasewrap
;increasewrap
	ld a, b
	add a, c
	jr .updatechanged
.decreasewrap
	ld a, b
	sub c
.updatechanged
	ld [hl], a
	pop hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call _hl_
	jp .mainloop

.STATUS
	db "Status@"
.ITEM
	db "Item@"
.ABILITY
	db "Ability@"
.NATURE
	db "Nature@"

numInput: MACRO
	dwcoord \1, \2 ; coordinate of top arrow
	dw \3 ; address of value
	db \4 ; amount to inc/dec by
	db \5 ; max value - if there's no max, it will wrap and b will be 1
	dw \6 ; address of code to update number etc
endm ; length = 8

.page1CursorTable:
	; dex number
	numInput 2, 0, wTempMonSpecies, 100, 0, .UpdateSpecies
	numInput 3, 0, wTempMonSpecies,  10, 0, .UpdateSpecies
.page1CursorStart ; 1s digit of dex number
	numInput 4, 0, wTempMonSpecies,   1, 0, .UpdateSpecies
	; form
	numInput 6, 0, wEditorFormNumber, 10, 31, .UpdateForm
	numInput 7, 0, wEditorFormNumber,  1, 31, .UpdateForm
	; gender
	numInput 9, 0, wEditorDummyByte, 1, 1, .UpdateGender
	; shiny
	numInput 10, 0, wEditorDummyByte, 1, 1, .UpdateShiny
	; level
	numInput 2, 2, wTempMonLevel, 100, 100, .UpdateLevel
	numInput 3, 2, wTempMonLevel,  10, 100, .UpdateLevel
	numInput 4, 2, wTempMonLevel,   1, 100, .UpdateLevel
	; exp
	numInput  7, 2, wTempMonExp+1, -24, 0, .UpdateExp1k ; 1000 - 1024, then we can just increase the high byte by 4
	numInput  8, 2, wTempMonExp+1, 100, 0, .UpdateExp
	numInput  9, 2, wTempMonExp+1,  10, 0, .UpdateExp
	numInput 10, 2, wTempMonExp+1,   1, 0, .UpdateExp
	; status
	; numInput 3, 8, wTempMonStatus,  1, 31, .DrawStatus

.UpdateSpecies:
	; update group byte
	; cy is set properly
	; d contains direction
	ld a, d
	dec a
	inc a ;doesn't set cy, only z
	jr z, .decspecies
;incspecies
	jr c, .nextgroup
	; we didn't overflow the species byte
	ld d, 0 ; if we did, d is already 1 from the direction
.nextgroup
	ld hl, RegionalMaxPokemonTable
	ld a, [wTempMonGroup]
	ld b, a
.findnext
	ld a, [hl]
	inc hl
	inc hl
	cp b
	jr nz, .findnext
	; overshot by nature of how that works
	dec hl
	; found
	ld a, [wTempMonSpecies]
	ld b, a
	ld a, [hl]
	cp b ; are we bigger than the current group?
	jr c, .incgroup
	ld a, d
	and a ; or, did we overflow the species byte?
	jr z, .CalcDex ; if not, we're done here
	ld d, 0 ; we can only overflow a single time so unset this
	        ; (IMPORTANT: this *might* not work properly with small group sizes and bad alignment, not sure)
.incgroup
	; subtract group size from species
	ld a, [wTempMonSpecies]
	ld b, [hl]
	sub b
	ld [wTempMonSpecies], a
	; increment group
	ld a, [wTempMonGroup]
	inc a
	ld [wTempMonGroup], a
	; group size can be < 100, so we need to be able to skip past an entire group and into the next
	jr .nextgroup
.decspecies
	ld a, [wTempMonSpecies]
	dec a
	inc a
	jr z, .zero ; species 0 counts as an 'underflow', because it's 1 indexed for whatever reason
	jr nc, .CalcDex ; if we didn't underflow, there's no need to do anything here
.zero
	ld a, [wTempMonGroup] ; on the second loop, this is already here
.decspecies2
	ld hl, RegionalMaxPokemonTable
	ld b, a
	dec a
	jr z, .CalcDex ; if we're already in group 1, no need to do any math (just needs to clamp to 0, which can be done later)
.findprev
	ld a, [hl]
	inc hl
	inc hl
	cp b
	jr nz, .findprev
	; this time we want the *previous* group, so we actually over shot even farther
	dec hl
	dec hl
	dec hl
	; found
	; add group size to species
	ld a, [wTempMonSpecies]
	ld b, [hl]
	add a, b
	ld [wTempMonSpecies], a
	; decrement group
	ld a, [wTempMonGroup]
	dec a
	ld [wTempMonGroup], a
	; group size can be < 100, so we need to be able to skip past an entire group and into the next
	jr nc, .decspecies2 ; if addition (add a, b) overflowed, go on? this math is confusing, I'm not sure if this is correct
.CalcDex:
	; calculate dex number from group+species
	ld b, 0
	ld a, [wTempMonSpecies]
	ld c, a
	ld a, [wTempMonGroup]
	dec a
	jr z, .group1
	ld hl, RegionalMaxPokemonTable + 1
	ld d, 0
.dexloop
	ld e, [hl]
	inc hl
	inc hl
	push hl
	ld h, b
	ld l, c
	add hl, de
	ld b, h
	ld c, l
	pop hl
	dec a
	jr nz, .dexloop
.group1
	ld a, b
	ld [wEditorDexNumber], a
	ld a, c
	ld [wEditorDexNumber+1], a
	; clamp form based on species maybe? depends on how well that part error handles itself
	; update changes to wTempMon in wCurPartyMon
	ld a, MON_GROUP
	farcall GetPartyParamLocation
	ld a, [wTempMonGroup]
	ld [hl], a
	inc hl ; MON_SPECIES
	ld a, [wTempMonSpecies]
	ld [hl], a
	jr .DrawSpecies
	
.UpdateForm:
	; reflect changes
	ld a, MON_FORM
	farcall GetPartyParamLocation
	ld a, [wTempMonForm]
	ld [hl], a
	jr .DrawSpecies
	
.UpdateGender:
	ld a, [wTempMonGender]
	xor GENDER_MASK
	ld [wTempMonGender], a
	ld b, a
	ld a, MON_GENDER
	farcall GetPartyParamLocation
	ld a, b
	ld [hl], a
	jr .DrawSpecies

.UpdateShiny:
	ld a, [wTempMonShiny]
	xor SHINY_MASK
	ld [wTempMonShiny], a
	ld b, a
	ld a, MON_SHINY
	farcall GetPartyParamLocation
	ld a, b
	ld [hl], a
	;jr .DrawSpecies
.DrawSpecies:
	; print dex number to screen
	ld bc, $C203 ; right aligned with leading 0s, 2 byte value, 3 digits
	ld de, wEditorDexNumber
	hlcoord 2, 1
	predef PrintNum
	; print form number to screen
	ld bc, $C102 ; right aligned with leading 0s, 1 byte value, 2 digits
	ld de, wEditorFormNumber
	hlcoord 6, 1
	predef PrintNum
	; print gender symbol
	ld a, [wTempMonForm]
	and GENDER_MASK
	rlca ; move bit 7 to bit 1
	add "♀" ; ♀ + 1 = ♂
	ldcoord_a 9, 1
	; print shiny symbol
	ld a, [wTempMonPersonality]
	and SHINY_MASK
	rlca ; shiny is also bit 7
	add "×" ; × + 1 = ★
	ldcoord_a 10, 1
	; update frontpic
	ld a, MON_GROUP_SPECIES_AND_FORM
	farcall GetPartyParamLocation
	call GetBaseData 
	ld de, VTiles2
	predef GetFrontpic
	ld de, wUnknBGPals
	call GetMonPalette
	farcall _CGB_FinishLayout
	ret

.UpdateLevel:
	ld a, [wTempMonLevel]
	dec a
	inc a
	jp nz, .DrawLevel
	inc a
	ld [wTempMonLevel], a
.DrawLevel:
	ld bc, $C103 ; right aligned with leading 0s, 1 byte value, 3 digits
	ld de, wTempMonLevel
	hlcoord 2, 3
	predef PrintNum
	ret

.UpdateExp1k: ; only using inc/dec, cy isn't touched
	ld a, [wTempMonExp]
	dec d
	inc d
;expup
	jp z, .expdown
	inc a
	inc a
	inc a
	; byte 1 was changed the opposite direction
	; byte 1 sets cy, which means it could cancel part of the 1000
	; you might only need to increment it 3 times instead of 4
	jp nc, .saveexp
	inc a
	jp .saveexp
.expdown
	dec a
	dec a
	dec a
	jp nc, .saveexp ; byte 1 was changed the opposite direction, see above
	dec a
	jp .saveexp
.UpdateExp:
	jp nc, .DrawExp ; if cy isn't set, nothing needs to update
	ld a, [wTempMonExp]
	dec d
	inc d
	jp nz, .upexp
;downexp
	dec a
	dec a ; this is smaller and probably faster than saving it and jumping past the increment
.upexp
	inc a
.saveexp
	ld [wTempMonExp], a
.DrawExp:
	ld bc, $C204 ; right aligned with leading 0s, 2 byte value, 4 digits
	ld de, wTempMonExp
	hlcoord 7, 3
	predef PrintNum
	ret

.DrawStatus:
	ld bc, $C101 ; right aligned with leading 0s, 2 byte value, 3 digits
	ld de, wTempMonStatus
	hlcoord 7, 9
	predef PrintNum
	ret

CloseEditor:
	; copy tempmon to party
	ld a, 0 ; start of struct
	farcall GetPartyParamLocation
	ld bc, wTempMon
	ld d, PARTYMON_STRUCT_LENGTH
.copy
	ld a, [bc]
	ld [hli], a
	inc bc
	dec d
	jr nz, .copy
	; close menu
	ld b, 0
	ret ; return from the *entire* EditPartyMon script, back to the party menu, which falls through into .quit