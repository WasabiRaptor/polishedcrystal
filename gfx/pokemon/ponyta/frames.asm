	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
.frame2
	db $01 ; bitmask
	db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
.frame3
	db $02 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $51, $52, $53, $2d, $2e
	db $54, $55, $56, $57, $33, $34, $35, $58, $36, $37, $38, $39
.frame4
	db $03 ; bitmask
	db $59, $5a, $5b, $04, $5c, $5d, $5e, $5f, $60, $61, $62, $63
	db $64, $45, $04, $4a, $4b, $4c, $65, $4e, $4f, $50
.frame5
	db $04 ; bitmask
	db $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71
	db $72, $54, $33, $73, $35, $36, $37, $38, $39
.frame6
	db $05 ; bitmask
	db $74, $75, $76, $77
