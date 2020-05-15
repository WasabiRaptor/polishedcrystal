	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $00, $35, $36, $37, $38, $39, $3a
.frame2
	db $01 ; bitmask
	db $00, $00, $3b, $3c, $3d, $00, $00, $31, $3e, $3f, $40, $41
	db $42, $43, $44, $39, $45
.frame3
	db $02 ; bitmask
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $00, $4f, $50
	db $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
.frame4
	db $03 ; bitmask
	db $5d, $5e, $5f, $60, $00, $00, $00, $4f, $61, $62, $63, $64
	db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
.frame5
	db $04 ; bitmask
	db $65, $66, $67, $68
