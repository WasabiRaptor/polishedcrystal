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
	db $3d, $3e, $3f, $40, $41, $42, $43, $44
.frame2
	db $01 ; bitmask
	db $45, $46, $33, $34, $47, $48, $49, $38, $39, $4a, $3a, $4b
	db $3c, $3d, $3e, $4c, $4d, $4e, $4f, $50, $43, $51, $52, $53
	db $54, $55
.frame3
	db $02 ; bitmask
	db $45, $56, $57, $47, $58, $59, $4a, $3a, $5a, $5b, $4c, $4d
	db $4e, $5c, $5d, $51, $52, $53, $54, $55
.frame4
	db $03 ; bitmask
	db $31, $5e, $5f, $35, $60, $61, $3a, $62, $5b, $3f, $40, $44
.frame5
	db $04 ; bitmask
	db $63, $64, $65, $66, $67, $00, $68, $00, $69, $6a, $6b, $6c
	db $6d, $25, $6e, $6f, $70
.frame6
	db $05 ; bitmask
	db $71, $72, $73, $74, $00, $75, $76, $00, $25, $77, $00, $6d
	db $78, $79, $7a, $00, $70
.frame7
	db $06 ; bitmask
	db $66, $7b, $7c, $7d, $00, $7e, $7f, $80, $6d, $81, $82, $83
	db $70
