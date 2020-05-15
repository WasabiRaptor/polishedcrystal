	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $36, $37, $00, $00, $38, $39, $3a, $3b, $3c, $00, $3d, $3e
	db $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a
	db $4b
.frame3
	db $01 ; bitmask
	db $36, $37, $00, $00, $38, $4c, $3a, $3b, $3c, $00, $3d, $4d
	db $3f, $40, $41, $4e, $4f, $44, $45, $46, $50, $48, $49, $51
	db $4b
.frame4
	db $02 ; bitmask
	db $52, $53, $54
