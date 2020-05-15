	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $02, $19, $1a, $02, $1b, $1c, $1d, $1e, $1f, $20, $02, $21
	db $22, $23, $24, $02, $25, $26, $27
.frame2
	db $00 ; bitmask
	db $02, $19, $1a, $02, $1b, $1c, $28, $1e, $29, $2a, $02, $21
	db $22, $23, $24, $02, $25, $26, $27
.frame3
	db $01 ; bitmask
	db $2b, $2c
.frame4
	db $02 ; bitmask
	db $2d, $24, $26, $27
