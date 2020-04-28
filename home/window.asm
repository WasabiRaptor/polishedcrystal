RefreshScreen:: ; 2dba
	call ClearWindowData
	ldh a, [hROMBank]
	push af
	ld a, BANK(ReanchorBGMap_NoOAMUpdate) ; BANK(LoadFonts_NoOAMUpdate)
	rst Bankswitch

	call ReanchorBGMap_NoOAMUpdate
	call BGMapAnchorTopLeft
	call LoadFonts_NoOAMUpdate

	pop af
	rst Bankswitch
	ret
; 2dcf

RefreshScreen_BridgeUpdate::
	call GetMovementPermissions
	farjp ReanchorBGMap_NoOAMUpdate_NoDelay

CloseText:: ; 2dcf
	ldh a, [hOAMUpdate]
	push af
	ld a, $1
	ldh [hOAMUpdate], a

	call .CloseText

	pop af
	ldh [hOAMUpdate], a
	ld hl, wVramState
	res 6, [hl]
	ret
; 2de2

.CloseText: ; 2de2
	call ClearWindowData
	xor a
	ldh [hBGMapMode], a
	call LoadMapPart
	call BGMapAnchorTopLeft
	xor a
	ldh [hBGMapMode], a
	call SafeUpdateSprites
	farcall ReloadVisibleSprites
	ld a, $90
	ldh [hWY], a
	call ReplaceKrisSprite
	xor a
	ldh [hBGMapMode], a

	farjp ReturnFromMapSetupScript
; 2e08

OpenText:: ; 2e08
	call ClearWindowData
	ldh a, [hROMBank]
	push af
	ld a, BANK(ReanchorBGMap_NoOAMUpdate) ; and BANK(LoadFonts_NoOAMUpdate)
	rst Bankswitch

	call ReanchorBGMap_NoOAMUpdate
	call SpeechTextBox
	call BGMapAnchorTopLeft
	call LoadFonts_NoOAMUpdate
	call LoadFontsExtra
	pop af
	rst Bankswitch

	ret
; 2e20

BGMapAnchorTopLeft::
	ldh a, [hOAMUpdate]
	push af
	ld a, $1
	ldh [hOAMUpdate], a

	ld b, 0
	call SafeCopyTilemapAtOnce
	call ResetGrassTileCenter

	pop af
	ldh [hOAMUpdate], a
	ret
; 2e31
ResetGrassTileCenter::
	hlcoord $14, $14
	ld a, l
	ld [wGrassTileAddress], a
	ld a, h
	ld [wGrassTileAddress+1], a
	ld a, 1
	ld [wHasPlayerMoved], a
	farjp SetTallGrassAttributes

SafeUpdateSprites:: ; 2e31
	ldh a, [hOAMUpdate]
	push af
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a
	ld a, $1
	ldh [hOAMUpdate], a
	call UpdateSprites
	xor a
	ldh [hOAMUpdate], a
	call DelayFrame
	pop af
	ldh [hBGMapMode], a
	pop af
	ldh [hOAMUpdate], a
	ret
; 2e4e
