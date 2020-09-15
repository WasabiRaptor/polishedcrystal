	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $19, $1a
.frame2
	db $01 ; bitmask
	db $1b, $1c, $00, $1d, $1e, $1f
.frame3
	db $02 ; bitmask
	db $00, $20, $21
.frame4
	db $02 ; bitmask
	db $00, $22, $21
.frame5
	db $03 ; bitmask
	db $23, $24
.frame6
	db $04 ; bitmask
	db $1b, $25, $26, $1d, $27, $28, $24
