	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $00, $37, $38, $39, $00, $3a
	db $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46
	db $47, $48, $49, $00, $00, $4a, $4b, $4c
.frame2
	db $01 ; bitmask
	db $4d, $4e, $3c, $4f
.frame3
	db $02 ; bitmask
	db $31, $32, $33, $34, $35, $36, $00, $37, $50, $3a, $51, $52
	db $3f, $40, $41, $42, $44, $45, $46, $53, $00, $00, $00
