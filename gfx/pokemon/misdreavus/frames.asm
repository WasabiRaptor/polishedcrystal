	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c
.frame2
	db $01 ; bitmask
	db $24, $25, $26, $28
.frame3
	db $00 ; bitmask
	db $2d, $2e, $26, $27, $2f, $29, $2a, $2b, $2c
.frame4
	db $01 ; bitmask
	db $2d, $2e, $26, $2f
.frame5
	db $02 ; bitmask
	db $26, $27, $29, $2a, $2b, $2c
.frame6
	db $03 ; bitmask
	db $26
.frame7
	db $04 ; bitmask
	db $30, $31, $32
