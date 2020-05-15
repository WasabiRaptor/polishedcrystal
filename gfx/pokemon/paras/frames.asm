	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d
.frame2
	db $01 ; bitmask
	db $19, $1a, $1b, $1c, $1e, $1f, $00, $20, $21, $00, $22, $23
	db $24, $25
.frame3
	db $02 ; bitmask
	db $26, $27, $28, $29, $2a
