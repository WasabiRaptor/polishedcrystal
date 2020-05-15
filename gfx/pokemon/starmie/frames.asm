	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $00, $29, $2a, $2b, $2c, $2d, $2e
	db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $00, $00
	db $39, $3a
.frame2
	db $01 ; bitmask
	db $3b, $00, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $46, $47, $48, $00, $00, $49, $4a, $4b, $4c, $00, $4d, $4e
	db $4f, $00
.frame3
	db $02 ; bitmask
	db $50, $51, $52, $53, $54, $55
.frame4
	db $02 ; bitmask
	db $50, $56, $57, $58, $59, $5a
