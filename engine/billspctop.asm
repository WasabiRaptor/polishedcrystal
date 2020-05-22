_BillsPC: ; e3fd
	call .LogIn
	call .UseBillsPC
	jp .LogOut

.LogIn: ; e41c (3:641c)
	xor a
	ldh [hBGMapMode], a
	call LoadStandardMenuDataHeader
	call ClearPCItemScreen
	ld hl, wOptions1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	pop af
	ld [wOptions1], a
	call LoadStandardFont
	call LoadFontsExtra
	jp LoadFontsBattleExtra

.LogOut: ; e43f (3:643f)
	jp CloseSubmenu

.UseBillsPC: ; e443 (3:6443)
	ld hl, .MenuDataHeader
	call LoadMenuDataHeader
	ld a, $1
.loop
	ld [wMenuCursorBuffer], a
	call SetPalettes
	xor a
	ld [wWhichIndexSet], a
	ldh [hBGMapMode], a
	call DoNthMenu
	jr c, .cancel
	ld a, [wMenuCursorBuffer]
	push af
	ld a, [wMenuSelection]
	ld hl, .Jumptable
	rst JumpTable
	pop bc
	ld a, b
	jr nc, .loop
.cancel
	jp CloseWindow

.MenuDataHeader: ; 0xe46f
	db $40 ; flags
	db 00, 00 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2: ; 0xe477
	db $80 ; flags
	db 0 ; items
	dw .items
	dw PlaceMenuStrings
	dw .strings

.strings ; e47f
	db "Withdraw Pokemon@"
	db "Deposit Pokemon@"
	db "Change Box@"
	db "Move Pokemon@"
	db "Quick Deposit@"
	db "See ya!@"

.Jumptable: ; e4ba (3:64ba)
	dw BillsPC_WithdrawMenu
	dw BillsPC_DepositMenu
	dw BillsPC_ChangeBoxMenu
	dw BillsPC_MovePKMNMenu
	dw BillsPC_SeeYa
	dw BillsPC_SeeYa

.items ; e4c4
	db 6
	db 0 ; WITHDRAW
	db 1 ; DEPOSIT
	db 2 ; CHANGE BOX
	db 3 ; MOVE PKMN
	db 4 ; QUICK DEPOSIT
	db 5 ; SEE YA!
	db -1

BillsPC_SeeYa: ; e4cb
	scf
	ret

BillsPC_MovePKMNMenu: ; e4cd
	call LoadStandardMenuDataHeader

	farcall StartMovePkmnWOMail_SaveGame
	jr c, .quit
	farcall _MovePKMNWithoutMail
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen

.quit
	call CloseWindow
	and a
	ret

.Text_MonHoldingMail: ; 0xe4f9
	; There is a Pokémon holding MAIL. Please remove the MAIL.
	text_jump UnknownText_0x1c102b
	db "@"

BillsPC_DepositMenu: ; e4fe (3:64fe)
	call LoadStandardMenuDataHeader
	farcall _DepositPKMN
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen
	call CloseWindow
	and a
	ret

CheckCurPartyMonFainted: ; e538
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH
	ld b, $0
.loop
	ld a, [wCurPartyMon]
	cp b
	jr z, .skip
	ld a, [hli]
	or [hl]
	jr nz, .notfainted
	dec hl

.skip
	inc b
	ld a, [wPartyCount]
	cp b
	jr z, .done
	add hl, de
	jr .loop

.done
	scf
	ret

.notfainted
	and a
	ret

BillsPC_WithdrawMenu: ; e559 (3:6559)
	call LoadStandardMenuDataHeader
	farcall _WithdrawPKMN
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen
	call CloseWindow
	and a
	ret

BillsPC_ChangeBoxMenu: ; e583 (3:6583)
	farcall _ChangeBox
	call ClearPCItemScreen
	and a
	ret

ClearPCItemScreen: ; e58b
	call OtherVariableWidthText
	call DisableSpriteUpdates
	xor a
	ldh [hBGMapMode], a
	call ClearBGPalettes
	call ClearSprites
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	ld a, " "
	call ByteFill
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	ld a, 7
	call ByteFill
	call ApplyAttrAndTilemapInVBlank
	jp SetPalettes ; load regular palettes?

CopyBoxmonToTempMon: ; e5bb
	ld a, [wCurPartyMon]
	ld hl, sBoxMon1
	ld bc, BOXMON_STRUCT_LENGTH
	rst AddNTimes
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	ld a, BANK(sBoxMon1)
	call GetSRAMBank
	rst CopyBytes
	jp CloseSRAM
