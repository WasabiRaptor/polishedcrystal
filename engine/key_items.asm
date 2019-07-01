KeyItemsPocket::
	ld a, $1
	ldh [hInMenu], a
	call KeyItems_PocketLoop
	ld a, 0 ; not xor a; preserve carry flag
	ldh [hInMenu], a
	ret nc
	call PlaceHollowCursor
	ld a, [wCurKeyItem]
	scf
	ret

KeyItems_PocketLoop: ; 2c8d3 (b:48d3)
	xor a
	ldh [hBGMapMode], a
	call KeyItems_DisplayPocketItems
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
	ld a, [wKeyItemsPocketCursor]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr KeyItems_ShowDescription

KeyItems_JoypadLoop: ; 2c915 (b:4915)
	call KeyItems_DisplayPocketItems
	call DoMenuJoypadLoop
	ld b, a
	ld a, [wMenuCursorY]
	dec a
	ld [wKeyItemsPocketCursor], a
	xor a
	ldh [hBGMapMode], a
	ld a, [w2DMenuFlags2]
	bit 7, a
	jp nz, KeyItems_ScrollPocket
	ld a, b
	ld [wMenuJoypad], a
	bit A_BUTTON_F, a
	jp nz, KeyItems_ChooseKeyItem
	bit B_BUTTON_F, a
	jp nz, KeyItems_ExitPack
	bit D_RIGHT_F, a
	jp nz, KeyItems_ExitPocket
	bit D_LEFT_F, a
	jp nz, KeyItems_ExitPocket
KeyItems_ShowDescription: ; 2c946 (b:4946)
	call KeyItems_GetCurrentKeyItem
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call TextBox
	ld a, [wCurKeyItem]
	cp NUM_KEY_ITEMS + 1
	jr nc, .Cancel
	ld [wd265], a
	ld [wCurSpecies], a
	;farcall PrintKeyItemDescription
    farcall UpdateKeyItemIconAndDescription
	jp KeyItems_JoypadLoop

.Cancel:
	farcall ClearKeyItemIcon
	jp KeyItems_JoypadLoop

KeyItems_ChooseKeyItem: ; 2c974 (b:4974)
	call KeyItems_PlaySFX_ReadText2
	call CountKeyItems ; This stores the count to wd265.
	ld a, [wMenuCursorY]
	dec a
	ld b, a
	ld a, [wKeyItemsPocketScrollPosition]
	add b
	ld b, a
	ld a, [wd265]
	cp b
	jr z, _KeyItems_ExitPack ; our cursor was hovering over CANCEL
    
KeyItems_GetCurrentKeyItem: ; 2c98a (b:498a)
	call KeyItems_GetCurrentPocketPosition
	ld a, [wMenuCursorY]
	ld b, a
.loop
	inc c
	ld a, c
	cp NUM_KEY_ITEMS + 1
	jr nc, .okay
	call InnerCheckKeyItems
	jr z, .loop
	dec b
	jr nz, .loop
	ld a, c
.okay
	ld [wCurKeyItem], a
	ret

KeyItems_ExitPack: ; 2c9a5 (b:49a5)
	call KeyItems_PlaySFX_ReadText2
_KeyItems_ExitPack: ; 2c9a8 (b:49a8)
	ld a, $2
	ld [wMenuJoypad], a
	and a
	ret

KeyItems_ExitPocket: ; 2c9af (b:49af)
	and a
	ret

KeyItems_ScrollPocket: ; 2c9b1 (b:49b1)
	ld a, b
	bit 7, a
	jr nz, .skip
	ld hl, wKeyItemsPocketScrollPosition
	ld a, [hl]
	and a
	jp z, KeyItems_JoypadLoop
	dec [hl]
	call KeyItems_DisplayPocketItems
	jp KeyItems_ShowDescription

.skip
	call KeyItems_GetCurrentPocketPosition
	ld b, 5
.loop
	inc c
	ld a, c
	cp NUM_KEY_ITEMS + 1
	jp nc, KeyItems_JoypadLoop
	call InnerCheckKeyItems
	jr z, .loop
	dec b
	jr nz, .loop
	ld hl, wKeyItemsPocketScrollPosition
	inc [hl]
	call KeyItems_DisplayPocketItems
	jp KeyItems_ShowDescription

KeyItems_DisplayPocketItems: ; 2c9e2 (b:49e2)
	hlcoord 5, 2
	lb bc, 10, 15
	ld a, " "
	call ClearBox
	call KeyItems_GetCurrentPocketPosition
	ld d, $5
.loop2
	inc c
	ld a, c
	cp NUM_KEY_ITEMS + 1
	jr nc, .NotKeyItems
	call InnerCheckKeyItems
	jr z, .loop2
	ld b, a
	ld a, c
	ld [wd265], a
	push hl
	push de
	push bc
	call KeyItemsPocket_GetCurrentLineCoord
	push hl
    
	ld a, [wd265]
	call GetKeyItemName
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

.NotKeyItems:
	call KeyItemsPocket_GetCurrentLineCoord
	inc hl
	inc hl
	inc hl
	push de
	ld de, KeyItems_String_Cancel
	call PlaceString
	pop de
	ret

KeyItemsPocket_GetCurrentLineCoord: ; 2ca86 (b:4a86)
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

KeyItems_String_Cancel: ; 2caae
	db "Cancel@"
; 2cab5

KeyItems_GetCurrentPocketPosition: ; 2cab5 (b:4ab5)
	ld a, [wKeyItemsPocketScrollPosition]
	ld b, a
	inc b
	ld c, -1
.loop
	inc c
	ld a, c
	call InnerCheckKeyItems
	jr z, .loop
	dec b
	jr nz, .loop
	dec c
	ret

KeyItems_PlaySFX_ReadText2: ; 2cad6 (b:4ad6)
	push de
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	pop de
	ret
; 2cadf (b:4adf)

CountKeyItems: ; 2cb2a (b:4b2a)
	ld hl, wKeyItems
	ld b, wKeyItemsEnd - wKeyItems
	jp CountSetBits

InnerCheckKeyItems:
	and a
	ret z
	push bc
	push de
	dec a
	ld e, a
	ld d, 0
	ld b, CHECK_FLAG
	ld hl, wKeyItems
	call FlagAction
	ld a, c
	pop de
	pop bc
	and a
	ret
