	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $00, $00, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
	db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
.frame2
	db $01 ; bitmask
	db $00, $00, $24, $25, $3a, $3b, $3c, $3d, $3e, $3f, $40, $2c
	db $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
	db $4d, $4e
.frame3
	db $01 ; bitmask
	db $00, $00, $4f, $50, $51, $27, $28, $52, $53, $54, $55, $56
	db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
	db $63, $64
.frame4
	db $00 ; bitmask
	db $00, $00, $24, $25, $65, $27, $28, $29, $66, $67, $2c, $2d
	db $68, $69, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
