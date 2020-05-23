FarCall    EQU $08
Bankswitch EQU $10
AddNTimes  EQU $18
CopyBytes  EQU $20
JumpTable  EQU $28
Predef     EQU $30
FarJP      EQU $38

anonbankpush: macro
	call AnonBankPush
	db BANK(\1)
endm

farcall: macro
	assert BANK(@) != BANK(\1), "Unnecessary farcall"
	rst FarCall
	dbw BANK(\1), \1
endm

farjp: macro
	assert BANK(@) != BANK(\1), "Unnecessary farjp"
	rst FarJP
	dbw BANK(\1), \1
endm

homecall: macro
	ldh a, [hROMBank]
	push af
if _NARG == 2
	ld a, \2
else
	ld a, BANK(\1)
endc
	rst Bankswitch
	call \1
	pop af
	rst Bankswitch
endm

; Auto Call
; NOT FUNCTIONAL
; More research needed to see if even possible
acall: macro
if _NARG == 2
COND\@ EQUS "\1"
	shift
else
COND\@ EQUS ""
endc

if BANK(\1) == BANK(@)
	call COND\@, \1
else
if "{COND\@}" == "z"
	jr nz, .nofarcall\@
elif "{COND\@}" == "nz"
	jr z, , .nofarcall\@
elif "{COND\@}" == "c"
	jr nc, .nofarcall\@
elif "{COND\@}" == "nc"
	jr c, .nofarcall\@
endc
	farcall \1
.nofarcall\@:
endc
endm

; Auto Jump
; NOT FUNCTIONAL
; More research needed to see if even possible
ajp: macro
if _NARG == 2
	COND\@ EQUS "\1"
	shift
else
	COND\@ EQUS ""
endc

if BANK(@) == BANK(\1)
if \1 <= @+127 && \1 >= @-128
	jr COND\@, \1
else
	jp COND\@, \1
endc
else
if COND\@ == "z"
	jr nz, .nofarjp\@
elif COND\@ == "nz"
	jr z, , .nofarjp\@
elif COND\@ == "c"
	jr nc, .nofarjp\@
elif COND\@ == "nc"
	jr c, .nofarjp\@
endc
	farjp \1
.nofarjp\@:
endc
endm
