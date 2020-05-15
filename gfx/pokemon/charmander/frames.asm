	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
.frame2
	db $01 ; bitmask
	db $19, $1a, $22, $23, $1c, $1d, $24, $25, $1f, $26, $27, $28
	db $29, $2a
.frame3
	db $02 ; bitmask
	db $2b
.frame4
	db $03 ; bitmask
	db $18, $2c, $2d, $2e, $2f, $30
.frame5
	db $04 ; bitmask
	db $19, $1a, $22, $23, $1c, $1d, $24, $25, $1f, $26, $27, $28
	db $18, $31, $32, $2e, $2f, $30
