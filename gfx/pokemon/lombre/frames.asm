	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $00, $28, $29, $2a, $2b, $2c, $2d, $2e
	db $2f, $30, $31, $32, $00, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $38, $39, $3a, $3b, $00, $00, $3c, $3d, $3e, $3f, $2d, $00
	db $40, $41, $42, $32, $00, $43, $44, $45, $46, $47, $48, $49
.frame3
	db $02 ; bitmask
	db $4a, $4b
