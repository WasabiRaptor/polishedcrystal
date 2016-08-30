MobileCheckOwnMonAnywhere: ; 4a843
; Like CheckOwnMonAnywhere, but only check for species.
; OT/ID don't matter.

	ld a, [PartyCount]
	and a
	ret z

	ld d, a
	ld e, 0
	ld hl, PartyMon1Species
	ld bc, PartyMonOT
.asm_4a851
	call .CheckMatch
	ret c
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .CopyName
	dec d
	jr nz, .asm_4a851
	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld a, [sBoxCount]
	and a
	jr z, .asm_4a888
	ld d, a
	ld hl, sBoxMon1Species
	ld bc, sBoxMonOT
.asm_4a873
	call .CheckMatch
	jr nc, .asm_4a87c
	call CloseSRAM
	ret

.asm_4a87c
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .CopyName
	dec d
	jr nz, .asm_4a873

.asm_4a888
	call CloseSRAM
	ld c, 0
.asm_4a88d
	ld a, [wCurBox]
	and $f
	cp c
	jr z, .asm_4a8d1
	ld hl, .BoxAddrs
	ld b, 0
rept 3
	add hl, bc
endr
	ld a, [hli]
	call GetSRAMBank
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_4a8d1
	push bc
	push hl
	ld de, sBoxMons - sBoxCount
	add hl, de
	ld d, h
	ld e, l
	pop hl
	push de
	ld de, sBoxMonOT - sBoxCount
	add hl, de
	ld b, h
	ld c, l
	pop hl
	ld d, a
.asm_4a8ba
	call .CheckMatch
	jr nc, .asm_4a8c4
	pop bc
	call CloseSRAM
	ret

.asm_4a8c4
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .CopyName
	dec d
	jr nz, .asm_4a8ba
	pop bc

.asm_4a8d1
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .asm_4a88d
	call CloseSRAM
	and a
	ret
; 4a8dc

.CheckMatch: ; 4a8dc
	push bc
	push hl
	push de
	ld d, b
	ld e, c
	ld a, [ScriptVar]
	ld b, [hl]
	cp b
	jr nz, .no_match
	jr .match

.no_match
	pop de
	pop hl
	pop bc
	and a
	ret

.match
	pop de
	pop hl
	pop bc
	scf
	ret
; 4a8f4

.BoxAddrs: ; 4a8f4
	dba sBox1
	dba sBox2
	dba sBox3
	dba sBox4
	dba sBox5
	dba sBox6
	dba sBox7
	dba sBox8
	dba sBox9
	dba sBox10
	dba sBox11
	dba sBox12
	dba sBox13
	dba sBox14
; 4a91e

.CopyName: ; 4a91e
	push hl
	ld hl, NAME_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ret
; 4a927

Function4a94e: ; 4a94e
	call FadeToMenu
	ld a, -1
	ld hl, wd002
	ld bc, 3
	call ByteFill
	xor a
	ld [wd018], a
	ld [wd019], a
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	call SetPalettes
	call Function4aa22
	jr c, .asm_4a985
	jr z, .asm_4a9a1
	jr .asm_4a97b

.asm_4a974
	call Function4aa25
	jr c, .asm_4a985
	jr z, .asm_4a9a1

.asm_4a97b
	call Function4ac58
	ld hl, wd019
	res 1, [hl]
	jr .asm_4a974

.asm_4a985
	ld a, [wd018]
	and a
	jr nz, .asm_4a990
	call Function4aba8
	jr c, .asm_4a974

.asm_4a990
	call CloseSubmenu
	ld hl, wd002
	ld a, -1
	ld bc, 3
	call ByteFill
	scf
	jr .asm_4a9af

.asm_4a9a1
	call Function4a9c3
	jr c, .asm_4a9b0
	call Function4a9d7
	jr c, .asm_4a974
	call CloseSubmenu
	and a

.asm_4a9af
	ret

.asm_4a9b0
	ld de, SFX_WRONG
	call PlaySFX
	ld hl, UnknownText_0x4a9be
	call PrintText
	jr .asm_4a974
; 4a9be

UnknownText_0x4a9be: ; 0x4a9be
	; Pick three #MON for battle.
	text_jump UnknownText_0x1c51d7
	db "@"
; 0x4a9c3

Function4a9c3: ; 4a9c3
	ld hl, wd002
	ld a, $ff
	cp [hl]
	jr z, .asm_4a9d5
	inc hl
	cp [hl]
	jr z, .asm_4a9d5
	inc hl
	cp [hl]
	jr z, .asm_4a9d5
	and a
	ret

.asm_4a9d5
	scf
	ret
; 4a9d7

Function4a9d7: ; 4a9d7
	ld a, [wd002]
	ld hl, PartyMonNicknames
	call GetNick
	ld h, d
	ld l, e
	ld de, EndFlypoint
	ld bc, 6
	call CopyBytes
	ld a, [wd003]
	ld hl, PartyMonNicknames
	call GetNick
	ld h, d
	ld l, e
	ld de, wd00c
	ld bc, 6
	call CopyBytes
	ld a, [wd004]
	ld hl, PartyMonNicknames
	call GetNick
	ld h, d
	ld l, e
	ld de, wd012
	ld bc, 6
	call CopyBytes
	ld hl, UnknownText_0x4aa1d
	call PrintText
	call YesNoBox
	ret
; 4aa1d

UnknownText_0x4aa1d: ; 0x4aa1d
	; , @  and @ . Use these three?
	text_jump UnknownText_0x1c51f4
	db "@"
; 0x4aa22

Function4aa22: ; 4aa22
	call ClearBGPalettes

Function4aa25: ; 4aa25
	callba LoadPartyMenuGFX
	callba InitPartyMenuWithCancel
	call Function4aad3

Function4aa7a: ; 4aa7a
	ld hl, wd002
	ld d, $3
.loop
	ld e, PARTY_LENGTH
	ld a, [hli]
	push de
	push hl
	cp -1
	jr z, .done
	ld hl, wSpriteAnimationStructs
	inc a
	ld d, a
.inner_loop
	ld a, [hl]
	and a
	jr z, .next
	cp d
	jr z, .same_as_d
	jr .next

	ld a, $3
	jr .proceed

.same_as_d
	ld a, $2

.proceed
	push hl
	ld c, l
	ld b, h
	ld hl, $2
	add hl, bc
	ld [hl], a
	pop hl

.next
	ld bc, $10
	add hl, bc
	dec e
	jr nz, .inner_loop
	pop hl
	pop de
	dec d
	jr nz, .loop
	jr .finished

.done
	pop hl
	pop de

.finished
	ret
; 4aab6

Function4aad3: ; 4aad3
	ld hl, PartyCount
	ld a, [hli]
	and a
	ret z ; Nothing in your party

	ld c, a
	xor a
	ld [hObjectStructIndexBuffer], a
.loop
	push bc
	push hl
	ld e, 0
	callba LoadMenuMonIcon
	ld a, [hObjectStructIndexBuffer]
	inc a
	ld [hObjectStructIndexBuffer], a
	pop hl
	pop bc
	dec c
	jr nz, .loop

	call Function4aa7a
	callba PlaySpriteAnimations
	ret
; 4aafb

Function4aba8: ; 4aba8
	ld hl, wd004
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	and a
	ret

.asm_4abbe
	ld a, $ff
	ld [hl], a
	scf
	ret
; 4abc3

Function4ac58: ; 4ac58
	lb bc, 2, 18
	hlcoord 1, 15
	call ClearBox
	callba FreezeMonIcons
	ld hl, MenuDataHeader_0x4aca2
	call LoadMenuDataHeader
	ld hl, wd019
	bit 1, [hl]
	jr z, .asm_4ac89
	hlcoord 11, 13
	ld b, $3
	ld c, $7
	call TextBox
	hlcoord 13, 14
	ld de, String_4ada7
	call PlaceString
	jr .asm_4ac96

.asm_4ac89
	hlcoord 11, 9
	ld b, $7
	ld c, $7
	call TextBox
	call Function4ad68

.asm_4ac96
	ld a, $1
	ld [hBGMapMode], a
	call Function4acaa
	call ExitMenu
	and a
	ret
; 4aca2

MenuDataHeader_0x4aca2: ; 0x4aca2
	db $40 ; flags
	db 09, 11 ; start coords
	db 17, 19 ; end coords
	dw NULL
	db 1 ; default option
; 0x4acaa

Function4acaa: ; 4acaa
.asm_4acaa
	ld a, $a0
	ld [wMenuData2Flags], a
	ld a, [wd019]
	bit 1, a
	jr z, .asm_4acc2
	ld a, $2
	ld [wMenuData2Items], a
	ld a, $c
	ld [wMenuBorderTopCoord], a
	jr .asm_4accc

.asm_4acc2
	ld a, $4
	ld [wMenuData2Items], a
	ld a, $8
	ld [wMenuBorderTopCoord], a

.asm_4accc
	ld a, $b
	ld [wMenuBorderLeftCoord], a
	ld a, $1
	ld [wMenuCursorBuffer], a
	call InitVerticalMenuCursor
	ld hl, w2DMenuFlags1
	set 6, [hl]
	call StaticMenuJoypad
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	ld a, [hJoyPressed]
	bit 0, a
	jr nz, .asm_4acf4
	bit 1, a
	jr nz, .asm_4acf3
	jr .asm_4acaa

.asm_4acf3
	ret

.asm_4acf4
	ld a, [wd019]
	bit 1, a
	jr nz, .asm_4ad0e
	ld a, [wMenuCursorY]
	cp $1
	jr z, Function4ad17
	cp $2
	jp z, Function4ad56
	cp $3
	jp z, Function4ad60
	jr .asm_4acf3

.asm_4ad0e
	ld a, [wMenuCursorY]
	cp $1
	jr z, Function4ad56
	jr .asm_4acf3

Function4ad17: ; 4ad17
	call Function4adb2
	jr z, .asm_4ad4a
	ld hl, wd002
	ld a, $ff
	cp [hl]
	jr z, .asm_4ad39
	inc hl
	cp [hl]
	jr z, .asm_4ad39
	inc hl
	cp [hl]
	jr z, .asm_4ad39
	ld de, SFX_WRONG
	call WaitPlaySFX
	ld hl, UnknownText_0x4ad51
	call PrintText
	ret

.asm_4ad39
	ld a, [CurPartyMon]
	ld [hl], a
	call Function4a9c3
	ret c
	ld a, [wd019]
	set 0, a
	ld [wd019], a
	ret

.asm_4ad4a
	ld a, $ff
	ld [hl], a
	call Function4adc2
	ret

UnknownText_0x4ad51: ; 0x4ad51
	; Only three #MON may enter.
	text_jump UnknownText_0x1c521c
	db "@"
; 0x4ad56

Function4ad56: ; 4ad56
	callba OpenPartyStats
	call WaitBGMap2
	ret
; 4ad60

Function4ad60: ; 4ad60
	callba ManagePokemonMoves
	ret
; 4ad67

Function4ad68: ; 4ad68
	hlcoord 13, 12
	ld de, String_4ad88
	call PlaceString
	call Function4adb2
	jr c, .asm_4ad7e
	hlcoord 13, 10
	ld de, String_4ada0
	jr .asm_4ad84

.asm_4ad7e
	hlcoord 13, 10
	ld de, String_4ad9a

.asm_4ad84
	call PlaceString
	ret
; 4ad88

String_4ad88: ; 4ad88
	db   "つよさをみる"
	next "つかえるわざ"
	next "もどる@"
; 4ad9a

String_4ad9a: ; 4ad9a
	db   "さんかする@"
; 4ada0

String_4ada0: ; 4ada0
	db   "さんかしない@"
; 4ada7

String_4ada7: ; 4ada7
	db   "つよさをみる"
	next "もどる@" ; BACK
; 4adb2

Function4adb2: ; 4adb2
	ld hl, wd002
	ld a, [CurPartyMon]
	cp [hl]
	ret z
	inc hl
	cp [hl]
	ret z
	inc hl
	cp [hl]
	ret z
	scf
	ret
; 4adc2

Function4adc2: ; 4adc2
	ld a, [wd002]
	cp $ff
	jr nz, .skip
	ld a, [wd003]
	cp $ff
	jr nz, .skip2
	ld a, [wd004]
	ld [wd002], a
	ld a, $ff
	ld [wd004], a
	jr .skip

.skip2
	ld [wd002], a
	ld a, $ff
	ld [wd003], a

.skip
	ld a, [wd003]
	cp $ff
	ret nz
	ld b, a
	ld a, [wd004]
	ld [wd003], a
	ld a, b
	ld [wd004], a
	ret
; 4adf7
