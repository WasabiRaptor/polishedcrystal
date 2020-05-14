


_FollowerInteractScript::
    copybytetovar wPlayerStairsType
    iftrue EndFollowerInteract
    faceplayer
    opentext
    callasm FollowerCommandMenu

EndFollowerInteract::
    closeportrait
    closetext
    end

FollowerCommandMenu:
    ld hl, FollowerCommandMenuDataHeader
	call LoadMenuDataHeader
	call InitVariableWidthText
	call _2DMenu
	xor a
	jp ExitMenu

FollowerCommandMenuDataHeader:
	db BACKUP_TILES ; flags
	db 13, 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 2, 6 ; rows, columns
	db 3 ; spacing
	dba PetStrings
	dbw BANK(.MenuData2), 0


MemeFollowerCommandMenuDataHeader:
	db BACKUP_TILES ; flags
	db (13-4), 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 4, 6 ; rows, columns
	db 3 ; spacing
	dba PetStrings
	dbw BANK(.MenuData2), 0


MemeFollowerCommandMenuDataHeader2:
	db BACKUP_TILES ; flags
	db (13-12), 0 ; start coords
	db 17, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db MENU2_ONE_X | MENU2_ONE_Y ; flags
	dn 8, 6 ; rows, columns
	db 3 ; spacing
	dba PetStrings
	dbw BANK(.MenuData2), 0

PetStrings:
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
	db "Pet@"
