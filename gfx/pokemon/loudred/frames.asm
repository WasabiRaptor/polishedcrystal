	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $00, $37, $38, $39, $3a, $3b
	db $30, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46
	db $47, $00, $48
.frame2
	db $01 ; bitmask
	db $49, $4a, $4b, $4c, $3e, $3f, $4d, $43, $44, $30, $00, $48
.frame3
	db $02 ; bitmask
	db $4e, $4f, $00, $50, $51, $52, $53, $4a, $00, $00, $4b, $54
	db $55, $56, $3e, $3f, $57, $58, $59, $4d, $43, $44, $30, $00
	db $48
.frame4
	db $03 ; bitmask
	db $49, $4a, $4b, $4c
