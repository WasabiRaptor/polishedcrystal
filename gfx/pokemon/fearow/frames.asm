	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $06, $31, $32, $33, $06, $34, $35, $36, $37, $38, $39, $06
	db $3a, $3b, $06, $3c, $3d, $3e, $06, $3f, $40, $41, $42, $06
	db $43, $44, $45, $46
.frame2
	db $01 ; bitmask
	db $36
.frame3
	db $02 ; bitmask
	db $06, $31, $47, $48, $49, $06, $4a, $4b, $4c, $4d, $06, $4e
	db $4f, $50, $06, $3a, $51, $06, $06, $06, $52, $53, $54, $06
	db $06, $06, $55, $56, $57, $06, $06, $06, $58, $59, $5a
.frame4
	db $03 ; bitmask
	db $5b
