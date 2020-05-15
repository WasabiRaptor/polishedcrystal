	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $00, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23
	db $00, $24, $25, $26, $00, $27, $28, $29
.frame2
	db $00 ; bitmask
	db $19, $1a, $00, $00, $1c, $1d, $1e, $00, $00, $2a, $22, $23
	db $00, $00, $2b, $2c, $00, $00, $00, $2d
.frame3
	db $00 ; bitmask
	db $19, $1a, $00, $00, $1c, $1d, $1e, $00, $00, $2e, $22, $23
	db $00, $00, $2f, $30, $00, $00, $00, $2d
.frame4
	db $01 ; bitmask
	db $19, $1a, $1c, $1d, $1e, $31, $32, $23
