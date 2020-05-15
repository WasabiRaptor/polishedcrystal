	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28
.frame2
	db $00 ; bitmask
	db $29, $2a, $2b, $27, $2c
.frame3
	db $01 ; bitmask
	db $2d, $2e, $2f, $30, $31, $32, $33, $34, $2a, $35, $36, $37
	db $38, $39, $3a, $3b, $3c, $3d, $3e
.frame4
	db $02 ; bitmask
	db $3f, $40, $41, $42
