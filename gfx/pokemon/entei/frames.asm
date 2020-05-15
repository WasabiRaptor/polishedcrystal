	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $1c, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
	db $48, $49
.frame2
	db $00 ; bitmask
	db $1c, $1c, $4a, $4b, $4c, $35, $4d, $4e, $4f, $50, $3a, $3b
	db $3c, $51, $52, $53, $54, $41, $42, $43, $44, $45, $46, $47
	db $48, $49
.frame3
	db $01 ; bitmask
	db $55, $56, $57
.frame4
	db $02 ; bitmask
	db $58, $59
