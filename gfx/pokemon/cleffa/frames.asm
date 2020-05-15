	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $00
	db $24, $25, $26, $27, $28, $29
.frame2
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $2a, $1f, $20, $21, $2b, $23, $00
	db $24, $25, $26, $27, $28, $29
.frame3
	db $00 ; bitmask
	db $2c, $2d, $1b, $1c, $2e, $2a, $1f, $20, $21, $2b, $23, $00
	db $2f, $30, $26, $31, $32, $29
.frame4
	db $01 ; bitmask
	db $33, $34
