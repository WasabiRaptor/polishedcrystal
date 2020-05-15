	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33
.frame2
	db $01 ; bitmask
	db $24, $25, $26, $34, $35, $29, $36, $37, $2b, $38, $2d, $2e
	db $2f, $30, $31, $32, $33
.frame3
	db $01 ; bitmask
	db $24, $25, $26, $34, $39, $29, $3a, $3b, $2b, $2c, $3c, $2e
	db $2f, $30, $31, $32, $33
.frame4
	db $02 ; bitmask
	db $3d
