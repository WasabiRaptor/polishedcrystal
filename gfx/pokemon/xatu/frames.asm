	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $24, $25
.frame2
	db $01 ; bitmask
	db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31
	db $32, $33
.frame3
	db $02 ; bitmask
	db $03, $03, $03, $34, $35, $36, $37, $38, $39, $29, $2a, $3a
	db $3b, $3c, $2b, $2c, $3d, $3e, $3f, $40, $03, $41, $42, $43
	db $44, $03, $03, $03, $33
