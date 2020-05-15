	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
	dw .frame8
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
.frame2
	db $01 ; bitmask
	db $2e, $2f, $30, $31, $32, $33, $27, $34, $35, $36, $37, $38
	db $39, $3a, $3b, $3c
.frame3
	db $01 ; bitmask
	db $2e, $3d, $3e, $3f, $40, $41, $27, $34, $42, $43, $37, $44
	db $45, $46, $47, $00
.frame4
	db $02 ; bitmask
	db $48, $49, $4a, $4b, $4c, $27, $4d, $4e, $4f, $50, $51, $52
	db $53, $54, $00
.frame5
	db $01 ; bitmask
	db $00, $55, $56, $57, $58, $59, $27, $5a, $5b, $5c, $5d, $5e
	db $5f, $60, $61, $00
.frame6
	db $02 ; bitmask
	db $62, $63, $64, $65, $66, $27, $5a, $67, $68, $5d, $69, $6a
	db $6b, $6c, $00
.frame7
	db $03 ; bitmask
	db $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78
.frame8
	db $04 ; bitmask
	db $79, $7a, $7b
