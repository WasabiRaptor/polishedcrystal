	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $00, $00, $31, $00, $32, $33, $34, $35, $36, $37, $38, $39
	db $3a, $3b, $3c, $3d, $3e, $00, $00
.frame2
	db $00 ; bitmask
	db $3f, $40, $31, $41, $32, $42, $43, $35, $36, $44, $45, $39
	db $46, $47, $3c, $3d, $3e, $00, $00
.frame3
	db $00 ; bitmask
	db $48, $49, $31, $41, $32, $42, $43, $35, $36, $44, $45, $39
	db $46, $47, $3c, $3d, $3e, $00, $00
.frame4
	db $01 ; bitmask
	db $4a, $4b, $4c, $4d, $4e
