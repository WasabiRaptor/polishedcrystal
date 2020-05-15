	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30
.frame2
	db $01 ; bitmask
	db $31, $32, $24, $33, $26, $34, $35, $27, $28, $29, $2a, $36
	db $37, $2b, $2c, $2d, $2e, $2f, $30
.frame3
	db $02 ; bitmask
	db $04, $04, $04, $04, $04, $38, $39, $3a, $32, $3b, $3c, $3d
	db $3e, $35, $27, $28, $29, $3f, $40, $37, $41, $2c, $2d, $2e
	db $42, $04, $43, $44, $45, $46
.frame4
	db $03 ; bitmask
	db $47, $48
