	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22
.frame2
	db $00 ; bitmask
	db $23, $24, $1b, $1c, $1d, $1e, $1f, $20, $21, $22
.frame3
	db $01 ; bitmask
	db $1b, $1c, $1d, $1e, $1f, $25, $26, $21, $22, $27
.frame4
	db $02 ; bitmask
	db $1b, $1c, $1d, $1e, $1f, $28, $29, $21, $22
.frame5
	db $03 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $25, $26, $21, $22, $27
.frame6
	db $04 ; bitmask
	db $23, $24, $28, $2a
.frame7
	db $05 ; bitmask
	db $2b, $2c, $2d, $2e
