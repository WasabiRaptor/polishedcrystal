	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f
.frame2
	db $01 ; bitmask
	db $20, $21, $00, $19, $1a, $1b, $1c, $1d, $22, $23, $24, $25
	db $26, $27
.frame3
	db $02 ; bitmask
	db $28, $29
.frame4
	db $03 ; bitmask
	db $20, $21, $00, $22, $2a, $2b, $25, $26, $27
