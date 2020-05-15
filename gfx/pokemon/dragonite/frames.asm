	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $31, $32, $38, $39, $34, $35, $3a, $3b, $3c, $3d, $3e, $3f
	db $40, $41, $42, $43, $44
.frame3
	db $02 ; bitmask
	db $31, $32, $38, $39, $34, $35, $3a, $3b, $45, $46, $3c, $3d
	db $47, $48, $49, $3f, $40, $4a, $4b, $4c, $42, $06, $06, $06
	db $44, $06, $06
.frame4
	db $03 ; bitmask
	db $31, $32, $38, $39, $34, $35, $3a, $3b, $4d, $4e, $3c, $3d
	db $4f, $50, $51, $3f, $40, $52, $53, $54, $42, $55, $56, $06
	db $44, $57, $58, $06
.frame5
	db $04 ; bitmask
	db $45, $46, $47, $48, $59, $4a, $4b, $5a, $06, $06, $5b, $06
	db $06
.frame6
	db $05 ; bitmask
	db $4d, $4e, $5c, $5d, $5e, $5f, $60, $61, $55, $62, $5b, $57
	db $58, $06
