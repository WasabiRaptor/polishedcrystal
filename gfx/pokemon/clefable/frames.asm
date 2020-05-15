	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43
.frame2
	db $01 ; bitmask
	db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
	db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
	db $5c
.frame3
	db $02 ; bitmask
	db $5d, $5e, $5f
