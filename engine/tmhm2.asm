TMHMPocket: ; 2c76f (b:476f)
	ld a, $1
	ldh [hInMenu], a
	call TMHM_PocketLoop
	ld a, 0 ; not xor a; preserve carry flag
	ldh [hInMenu], a
	ret nc
	call PlaceHollowCursor
	ld a, [wCurTMHM]
	scf
	ret

TMHM_PocketLoop: ; 2c8d3 (b:48d3)
	xor a
	ldh [hBGMapMode], a
	call TMHM_DisplayPocketItems
	ld a, 2
	ld [w2DMenuCursorInitY], a
	ld a, 7
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 5
	sub d
	inc a
	cp 6
	jr nz, .okay
	dec a
.okay
	ld [w2DMenuNumRows], a
	ld a, $c
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	ld a, A_BUTTON | B_BUTTON | D_UP | D_DOWN | D_LEFT | D_RIGHT
	ld [wMenuJoypadFilter], a
	ld a, [wTMHMPocketCursor]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr TMHM_ShowTMMoveDescription

TMHM_JoypadLoop: ; 2c915 (b:4915)
	call DoMenuJoypadLoop
	ld b, a
	ld a, [wMenuCursorY]
	dec a
	ld [wTMHMPocketCursor], a
	xor a
	ldh [hBGMapMode], a
	ld a, [w2DMenuFlags2]
	bit 7, a
	jp nz, TMHM_ScrollPocket
	ld a, b
	ld [wMenuJoypad], a
	bit A_BUTTON_F, a
	jp nz, TMHM_ChooseTMorHM
	bit B_BUTTON_F, a
	jp nz, TMHM_ExitPack
	bit D_RIGHT_F, a
	jp nz, TMHM_ExitPocket
	bit D_LEFT_F, a
	jp nz, TMHM_ExitPocket
TMHM_ShowTMMoveDescription: ; 2c946 (b:4946)
	call TMHM_GetCurrentTMHM
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call TextBox
	farcall LoadTMHMIconPalette
	call SetPalettes
	ld a, [wCurTMHM]
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .Cancel
	ld [wd265], a
	predef GetTMHMMove
	ld a, [wNamedObjectIndexBuffer]
	ld [wCurMove], a
	ld a, [wNamedObjectIndexBuffer+1]
	ld [wCurMoveHigh], a
	hlcoord 1, 14
	call PrintMoveDesc
	farcall LoadTMHMIcon
	jp TMHM_JoypadLoop

.Cancel:
	farcall ClearTMHMIcon
	jp TMHM_JoypadLoop

TMHM_ChooseTMorHM: ; 2c974 (b:4974)
	call TMHM_PlaySFX_Accept
	call CountTMsHMs ; This stores the count to wd265.
	ld a, [wMenuCursorY]
	dec a
	ld b, a
	ld a, [wTMHMPocketScrollPosition]
	add b
	ld b, a
	ld a, [wd265]
	cp b
	jr z, _TMHM_ExitPack ; our cursor was hovering over CANCEL
TMHM_GetCurrentTMHM: ; 2c98a (b:498a)
	call TMHM_GetCurrentPocketPosition
	ld a, [wMenuCursorY]
	ld b, a
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .okay
	call InnerCheckTMHM
	jr z, .loop
	dec b
	jr nz, .loop
	ld a, c
.okay
	ld [wCurTMHM], a
	ret

TMHM_ExitPack: ; 2c9a5 (b:49a5)
	call TMHM_PlaySFX_ReadText2
_TMHM_ExitPack: ; 2c9a8 (b:49a8)
	ld a, $2
	ld [wMenuJoypad], a
	and a
	ret

TMHM_ExitPocket: ; 2c9af (b:49af)
	and a
	ret

TMHM_ScrollPocket: ; 2c9b1 (b:49b1)
	ld a, b
	bit 7, a
	jr nz, .skip
	ld hl, wTMHMPocketScrollPosition
	ld a, [hl]
	and a
	jp z, TMHM_JoypadLoop
	dec [hl]

	call IsSFXPlaying
	jr nc, .no_sound
	ld de, SFX_SCROLL
	call PlaySFX
.no_sound

	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

.skip
	call TMHM_GetCurrentPocketPosition
	ld b, 5
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jp nc, TMHM_JoypadLoop
	call InnerCheckTMHM
	jr z, .loop
	dec b
	jr nz, .loop
	ld hl, wTMHMPocketScrollPosition
	inc [hl]

	call IsSFXPlaying
	jr nc, .no_sound2
	ld de, SFX_SCROLL
	call PlaySFX
.no_sound2

	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

TMHM_DisplayPocketItems: ; 2c9e2 (b:49e2)
	VWTextStart $b0
	call InitVariableWidthTiles
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jp z, Tutorial_TMHMPocket

	hlcoord 5, 2
	lb bc, 10, 15
	ld a, " "
	call ClearBox
	call TMHM_GetCurrentPocketPosition
	ld d, $5
.loop2
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .NotTMHM
	call InnerCheckTMHM
	jr z, .loop2
	ld b, a
	ld a, c
	ld [wd265], a
	push hl
	push de
	push bc
	call TMHMPocket_GetCurrentLineCoord
	push hl
	ld a, [wd265]
	cp NUM_TMS + 1
	jr nc, .HM
	ld de, wd265
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	predef PrintNum
	jr .okay

.HM:
	push af
	sub NUM_TMS
	ld [wd265], a
	ld [hl], "H"
	inc hl
	ld de, wd265
	lb bc, PRINTNUM_LEFTALIGN | 1, 2
	predef PrintNum
	pop af
	ld [wd265], a
.okay
	predef GetTMHMMove
	ld a, [wd265]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	pop hl
	ld bc, 3
	add hl, bc
	push hl
	call PlaceString
	pop hl
	pop bc
	pop de
	pop hl
	dec d
	jr nz, .loop2
	ret

.NotTMHM:
	call TMHMPocket_GetCurrentLineCoord
	inc hl
	inc hl
	inc hl
	push de
	ld de, TMHM_String_Cancel
	call PlaceString
	pop de
	ret

TMHMPocket_GetCurrentLineCoord: ; 2ca86 (b:4a86)
	hlcoord 5, 0
	ld bc, 2 * SCREEN_WIDTH
	ld a, 6
	sub d
	ld e, a
	; AddNTimes
.loop
	add hl, bc
	dec e
	jr nz, .loop
	ret
; 2ca95 (b:4a95)

TMHM_String_Cancel: ; 2caae
	db "Cancel@"
; 2cab5

TMHM_GetCurrentPocketPosition: ; 2cab5 (b:4ab5)
	ld a, [wTMHMPocketScrollPosition]
	ld b, a
	inc b
	ld c, -1
.loop
	inc c
	ld a, c
	call InnerCheckTMHM
	jr z, .loop
	dec b
	jr nz, .loop
	dec c
	ret

Tutorial_TMHMPocket: ; 2caca (b:4aca)
	hlcoord 9, 3
	push de
	ld de, TMHM_String_Cancel
	call PlaceString
	pop de
	ret

TMHM_PlaySFX_Accept:
	push de
	ld de, SFX_ACCEPT
	call PlaySFX
	pop de
	ret

TMHM_PlaySFX_ReadText2:
	push de
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	pop de
	ret

CountTMsHMs: ; 2cb2a (b:4b2a)
	ld hl, wTMsHMs
	ld b, wTMsHMsEnd - wTMsHMs
	jp CountSetBits

InnerCheckTMHM:
	and a
	ret z
	push bc
	push de
	dec a
	ld e, a
	ld d, 0
	ld b, CHECK_FLAG
	ld hl, wTMsHMs
	call FlagAction
	ld a, c
	pop de
	pop bc
	and a
	ret

PrintMoveDesc: ; 2cb3e
	push hl
	ld hl, MoveDescriptions
	ld a, [wCurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	call InitVariableWidthText
	jp PlaceString
; 2cb52

AskTeachTMHM: ; 2c7bf (b:47bf)
	ld hl, wOptions1
	ld a, [hl]
	push af
	res NO_TEXT_SCROLL, [hl]
	ld hl, wForgettingMove
	set LEARNING_TM_F, [hl]
	ld a, [wCurTMHM]
	ld [wCurTMHMBuffer], a
	predef GetTMHMMove
	ld a, [wNamedObjectIndexBuffer]
	ld [wPutativeTMHMMove], a
	ld a, [wNamedObjectIndexBuffer+1]
	ld [wPutativeTMHMMove+1], a
	call GetMoveName
	call CopyName1
	ld hl, Text_BootedTM ; Booted up a TM
	ld a, [wCurTMHM]
	cp HM01 + 1 ; off by one error?
	jr c, .TM

	; allow full PP restore for HMs
	ld hl, wForgettingMove
	res LEARNING_TM_F, [hl]
	ld hl, Text_BootedHM ; Booted up an HM
.TM:
	call PrintText
	ld de, SFX_CHOOSE_PC_OPTION
	call WaitPlaySFX
	call Text_WaitButton
	ld hl, Text_ItContained
	call PrintText
	call YesNoBox
	pop bc
	ld a, b
	ld [wOptions1], a
	ld hl, wForgettingMove
	res LEARNING_TM_F, [hl]
	ret

ChooseMonToLearnTMHM: ; 2c7fb
	ld hl, wStringBuffer2
	ld de, wTMHMMoveNameBackup
	ld bc, 12
	rst CopyBytes
	call ClearBGPalettes
ChooseMonToLearnTMHM_NoRefresh: ; 2c80a
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX
	ld a, [wPutativeTMHMMove]
	and a
	ld a, 3 ; TeachWhichPKMNString
	jr nz, .got_text
	ld a, 9 ; TutorWhichPKMNString
.got_text
	ld [wPartyMenuActionText], a
.loopback
	farcall WritePartyMenuTilemap
	farcall PrintPartyMenuText
	call ApplyTilemapInVBlank
	call SetPalettes
	call DelayFrame
	farcall PartyMenuSelect
	ret c
	push af
	ld a, MON_IS_EGG
	predef GetPartyParamLocation
	bit MON_IS_EGG_F, [hl]
	pop bc ; now contains the former contents of af
	jr nz, .egg
	push bc
	ld hl, wTMHMMoveNameBackup
	ld de, wStringBuffer2
	ld bc, 12
	rst CopyBytes
	pop af ; now contains the original contents of af
	ret

.egg
	push hl
	push de
	push bc
	push af
	ld de, SFX_WRONG
	call PlaySFX
	call WaitSFX
	pop af
	pop bc
	pop de
	pop hl
	jr .loopback
; 2c867

TeachTMHM: ; 2c867
	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	predef GetNick
	pop bc

	ld a, c
	and a
	jr nz, .compatible
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld hl, Text_TMHMNotCompatible
	call PrintText
	jr .nope

.compatible
	call KnowsMove
	jr c, .nope

	predef LearnMove
	ld a, b
	and a
	jr z, .nope

	ld a, [wCurTMHM]
	call IsHM
	ret c

	ld c, HAPPINESS_LEARNMOVE
	farcall ChangeHappiness
	jr .learned_move

.nope
	and a
	ret

.learned_move
	scf
	ret
; 2c8bf (b:48bf)

IsHM:: ; 34df
	cp HM01
	jr c, .NotHM
	scf
	ret
.NotHM:
	and a
	ret

KnowsMove: ; f9ea
	ld a, MON_MOVES
	predef GetPartyParamLocation
	ld a, [wPutativeTMHMMove]
	ld c, a
	ld a, [wPutativeTMHMMove+1]
	ld b, a
	ld d, NUM_MOVES
.loop
	ld a, [hli]
	cp c
	jr nz, .next
	push hl
	inc hl
	inc hl
	inc hl
	ld a, [hl]
	cp b
	pop hl
	jr z, .knows_move
.next
	dec d
	jr nz, .loop
	and a
	ret

.knows_move
	ld hl, .Text_knows
	call PrintText
	scf
	ret

.Text_knows: ; 0xfa06
	; knows @ .
	text_jump UnknownText_0x1c5ea8
	db "@"

Text_BootedTM: ; 0x2c8bf
	; Booted up a TM.
	text_jump UnknownText_0x1c0373
	db "@"
; 0x2c8c4

Text_BootedHM: ; 0x2c8c4
	; Booted up an HM.
	text_jump UnknownText_0x1c0384
	db "@"
; 0x2c8c9

Text_ItContained: ; 0x2c8c9
	; It contained @ . Teach @ to a Pokémon?
	text_jump UnknownText_0x1c0396
	db "@"
; 0x2c8ce

Text_TMHMNotCompatible: ; 0x2c8ce
	; is not compatible with @ . It can't learn @ .
	text_jump UnknownText_0x1c03c2
	db "@"
; 0x2c8d3
