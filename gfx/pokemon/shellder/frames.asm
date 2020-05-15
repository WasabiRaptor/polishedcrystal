	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $19, $00, $1a, $1b, $1c, $1d
.frame2
	db $00 ; bitmask
	db $1e, $00, $1f, $20, $21, $22
.frame3
	db $01 ; bitmask
	db $1e, $00, $23, $1f, $20, $24, $25, $22, $26, $27
