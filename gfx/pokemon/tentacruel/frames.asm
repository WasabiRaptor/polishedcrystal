	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $24, $25, $26
.frame2
	db $01 ; bitmask
	db $27, $28, $24, $29, $2a, $2b, $25, $2c, $2d, $2e, $2f, $30
	db $31, $32
.frame3
	db $02 ; bitmask
	db $24, $33, $25, $26, $34
