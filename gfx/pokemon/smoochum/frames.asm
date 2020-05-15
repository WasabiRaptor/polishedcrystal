	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b
.frame2
	db $01 ; bitmask
	db $2c, $2d, $25, $2e, $2f, $30, $28, $31, $29, $2a, $32, $2b
.frame3
	db $01 ; bitmask
	db $2c, $2d, $25, $2e, $33, $27, $28, $31, $29, $2a, $32, $2b
.frame4
	db $02 ; bitmask
	db $2c, $34, $2e, $35, $31, $32
