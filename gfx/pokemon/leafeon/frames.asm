	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $00, $3d, $3e, $3f, $40, $41, $42, $43
.frame2
	db $01 ; bitmask
	db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
	db $00, $50, $51, $52, $53, $40, $54, $55, $56
.frame3
	db $01 ; bitmask
	db $00, $00, $57, $58, $59, $5a, $4a, $4b, $4c, $4d, $4e, $4f
	db $00, $5b, $51, $52, $53, $40, $5c, $5d, $56
.frame4
	db $01 ; bitmask
	db $00, $00, $5e, $5f, $60, $61, $4a, $4b, $62, $63, $4e, $4f
	db $00, $64, $65, $52, $53, $40, $66, $67, $68
.frame5
	db $02 ; bitmask
	db $69, $6a, $6b, $6c, $6d, $6e, $44, $6f, $70, $71
.frame6
	db $03 ; bitmask
	db $6d, $6e
.frame7
	db $04 ; bitmask
	db $6d, $6e, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b
	db $7c, $7d, $7e, $00, $7f, $80
