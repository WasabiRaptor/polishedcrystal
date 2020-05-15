	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $03, $03, $03, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
	db $22
.frame2
	db $01 ; bitmask
	db $23, $03, $03, $24, $1a, $1b, $1c, $25, $26, $1f, $20, $27
	db $21, $22
.frame3
	db $02 ; bitmask
	db $28, $29, $2a, $2b
