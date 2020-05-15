	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32
.frame2
	db $01 ; bitmask
	db $33, $34, $00, $35, $36, $37, $29, $38, $39, $00, $2c, $2d
	db $3a, $3b, $00, $3c, $3d, $3e, $3f, $40, $41
.frame3
	db $01 ; bitmask
	db $42, $43, $00, $44, $45, $46, $29, $38, $39, $00, $2c, $47
	db $48, $3b, $00, $49, $4a, $3e, $3f, $4b, $4c
.frame4
	db $02 ; bitmask
	db $4d, $29, $2c, $2d
