	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $00, $34, $35, $36, $37, $38, $39, $3a, $00
	db $3b
.frame2
	db $01 ; bitmask
	db $3c, $3b, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
.frame3
	db $02 ; bitmask
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
.frame4
	db $03 ; bitmask
	db $51, $52, $53, $54, $55, $56, $57, $58, $59, $3c, $5a, $5b
	db $00, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
	db $00
.frame5
	db $04 ; bitmask
	db $3c, $67, $68, $3b, $69, $6a, $6b, $6c, $6d, $6e
.frame6
	db $05 ; bitmask
	db $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a
	db $7b, $7c, $7d, $7e, $7f
