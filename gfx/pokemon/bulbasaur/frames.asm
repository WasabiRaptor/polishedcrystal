	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
	db $25
.frame2
	db $01 ; bitmask
	db $19, $26, $1b, $1c, $27, $28, $1e, $1f, $29, $2a, $23
.frame3
	db $02 ; bitmask
	db $00, $2b, $2c, $2d, $2e, $2f, $30
.frame4
	db $03 ; bitmask
	db $19, $1b, $1c, $1e, $1f, $23
.frame5
	db $04 ; bitmask
	db $31, $32, $33, $34, $35
