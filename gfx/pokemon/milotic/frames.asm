	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d
.frame2
	db $00 ; bitmask
	db $3e, $3f, $40, $34, $41, $42, $43, $44, $45, $46, $47, $3c
	db $3d
.frame3
	db $01 ; bitmask
	db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $3e, $3f, $50, $51
	db $41, $42, $43, $44, $45, $46, $47, $3c, $3d
.frame4
	db $02 ; bitmask
	db $00, $00, $00, $52, $00, $53, $54, $55, $56, $57, $58, $59
	db $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65
	db $66, $67, $68
