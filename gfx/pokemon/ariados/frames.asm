	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $00, $34, $35, $36, $37, $38, $39, $3a, $00
	db $3b, $3c, $3d, $3e, $00, $3f, $40, $41, $42, $00, $43, $44
	db $00
.frame2
	db $00 ; bitmask
	db $31, $32, $45, $00, $34, $35, $36, $37, $38, $46, $47, $00
	db $3b, $3c, $3d, $48, $49, $3f, $40, $41, $42, $00, $43, $44
	db $00
.frame3
	db $01 ; bitmask
	db $4a, $4b, $31, $32, $45, $00, $4c, $4d, $4e, $37, $38, $46
	db $47, $00, $3b, $3c, $3d, $48, $49, $4f, $50, $51, $42, $52
	db $53, $54, $44, $00
.frame4
	db $00 ; bitmask
	db $31, $55, $56, $00, $34, $35, $36, $37, $57, $58, $3a, $00
	db $3b, $3c, $59, $5a, $00, $3f, $40, $41, $42, $00, $43, $44
	db $00
