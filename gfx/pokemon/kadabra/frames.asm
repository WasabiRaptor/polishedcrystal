	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $05, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
	db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
.frame2
	db $00 ; bitmask
	db $05, $24, $3b, $3c, $27, $28, $29, $3d, $3e, $3f, $40, $2e
	db $41, $42, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
.frame3
	db $00 ; bitmask
	db $05, $24, $43, $44, $27, $28, $45, $46, $47, $48, $49, $4a
	db $4b, $4c, $31, $32, $4d, $34, $35, $36, $37, $38, $39, $3a
.frame4
	db $01 ; bitmask
	db $4e, $4f, $50, $51, $52
