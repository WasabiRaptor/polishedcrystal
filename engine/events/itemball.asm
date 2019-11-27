FindItemInBallScript:: ; 0x122ce
	callasm .TryReceiveItem
	iffalse .no_room
	disappear LAST_TALKED
	opentext
	writetext .text_found
	playsound SFX_ITEM
	pause 60
	itemnotify
	closetext
	end
; 0x122e3

.no_room ; 0x122e3
	opentext
	writetext .text_found
	waitbutton
	pocketisfull
	closetext
	end
; 0x122ee

.text_found ; 0x122ee
	; found @ !
	text_jump UnknownText_0x1c0a1c
	db "@"
; 0x122f3

.TryReceiveItem: ; 122f8
	xor a
	ld [wScriptVar], a
	ld a, [wCurItemBallContents]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, wStringBuffer3
	call CopyName2
	ld a, [wCurItemBallContents]
	ld [wCurItem], a
	ld a, [wCurItemBallQuantity]
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem
	ret nc
	ld a, $1
	ld [wScriptVar], a
	ret
; 12324

FindTMHMInBallScript::
	callasm .ReceiveTMHM
	disappear LAST_TALKED
	opentext
	writetext .text_found
	playsound SFX_ITEM
	pause 60
	tmhmnotify
	closetext
	end

.text_found
	; found @ !
	text_jump UnknownText_0x1c0a1c
	db "@"

.ReceiveTMHM:
	xor a
	ld [wScriptVar], a
	ld a, [wCurItemBallContents]
	ld [wNamedObjectIndexBuffer], a
	farcall GetTMHMName
	ld hl, wStringBuffer3
	call CopyName2

	; off by one error?
	ld a, [wd265]
	inc a
	ld [wd265], a

	predef GetTMHMMove
	ld a, [wd265]
	ld [wPutativeTMHMMove], a
	call GetMoveName

	ld hl, wStringBuffer3 + 4 ; assume all TM names are 4 characters, "TM##"
	ld a, " "
	ld [hli], a
	call CopyName2

	ld a, [wCurItemBallContents]
	ld [wCurTMHM], a
	call ReceiveTMHM
	ld a, $1
	ld [wScriptVar], a
	ret

ReceiveTMHM:: ; d3c4
	ld a, [wCurTMHM]
	ld e, a
	ld d, 0
	ld b, SET_FLAG
	ld hl, wTMsHMs
	call FlagAction
	scf
	ret

ReceiveKeyItem:: ; d3c4
	ld a, [wCurKeyItem]
	ld e, a
	ld d, 0
	ld b, SET_FLAG
	ld hl, wKeyItems
	call FlagAction
	scf
	ret

TossKeyItem:: ; d3c4
	ld a, [wCurKeyItem]
	ld e, a
	ld d, 0
	ld b, RESET_FLAG
	ld hl, wKeyItems
	call FlagAction
	scf
	ret

CheckKeyItem:: ; d3c4
	ld a, [wCurKeyItem]
	ld e, a
	ld d, 0
	ld b, CHECK_FLAG
	ld hl, wKeyItems
	call FlagAction
	ret z
	scf
	ret

CheckTMHM:: ; d3fb
	ld a, [wCurTMHM]
	ld e, a
	ld d, 0
	ld b, CHECK_FLAG
	ld hl, wTMsHMs
	call FlagAction
	ret z
	scf
	ret
