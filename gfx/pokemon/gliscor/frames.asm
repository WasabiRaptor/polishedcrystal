	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $03, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
	db $03, $48, $49, $4a
.frame2
	db $01 ; bitmask
	db $03, $4b, $4c, $4d, $03, $4e, $4f, $50, $51, $52, $53, $54
	db $55, $56, $57, $58, $59, $41, $5a, $5b, $5c, $5d, $5e, $5f
	db $60, $03, $61, $62, $63
.frame3
	db $02 ; bitmask
	db $03, $64, $32, $65, $66, $67, $65, $68, $69, $6a, $6b, $6c
	db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78
	db $79, $7a, $7b, $7c, $7d, $7e, $03, $48, $7f
.frame4
	db $03 ; bitmask
	db $80, $81, $82