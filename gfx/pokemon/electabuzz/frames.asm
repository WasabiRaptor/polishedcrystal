	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28
.frame2
	db $01 ; bitmask
	db $29, $2a, $2b, $2c, $00, $2d, $2e, $2f, $30, $31, $32, $33
	db $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $00, $3d, $00
.frame3
	db $02 ; bitmask
	db $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
	db $4a, $4b, $4c
.frame4
	db $03 ; bitmask
	db $4d, $4e, $4f, $50, $51, $52, $53
.frame5
	db $04 ; bitmask
	db $54, $55, $56, $57, $41, $58, $59, $5a, $5b, $5c, $5d, $47
	db $48, $5e, $5f, $4b, $4c, $60, $61, $62, $63, $64, $65
.frame6
	db $01 ; bitmask
	db $66, $67, $68, $69, $57, $6a, $6b, $4d, $6c, $5b, $6d, $4f
	db $50, $51, $6e, $6f, $52, $53, $60, $61, $62, $63, $64, $65
.frame7
	db $04 ; bitmask
	db $70, $68, $69, $57, $71, $72, $4d, $6c, $5b, $73, $4f, $50
	db $51, $6e, $6f, $52, $53, $60, $61, $62, $63, $64, $65
