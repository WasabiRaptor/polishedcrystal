	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $00, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f
.frame2
	db $00 ; bitmask
	db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
	db $4c, $4d, $3e, $4e
.frame3
	db $01 ; bitmask
	db $40, $41, $42, $43, $44, $45, $46, $47, $48, $4f, $50, $4a
	db $4b, $4c, $4d, $51, $3e, $4e, $52
.frame4
	db $02 ; bitmask
	db $53, $54, $55, $56, $57, $58, $00, $59, $5a, $5b, $5c, $5d
	db $5e, $5f, $60, $61, $62, $63, $64
.frame5
	db $03 ; bitmask
	db $53, $54, $55, $56, $57, $58, $00, $59, $5a, $5b, $5c, $5d
	db $5e, $5f, $60, $65, $66, $67
