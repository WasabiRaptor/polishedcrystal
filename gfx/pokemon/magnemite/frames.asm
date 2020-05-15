	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
.frame2
	db $01 ; bitmask
	db $19, $1a, $22, $1b, $23, $24, $25, $26, $27, $1e, $28, $29
	db $20, $21
.frame3
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $2a, $1e, $1f, $20, $21
.frame4
	db $02 ; bitmask
	db $1d
.frame5
	db $02 ; bitmask
	db $25
.frame6
	db $02 ; bitmask
	db $2a
