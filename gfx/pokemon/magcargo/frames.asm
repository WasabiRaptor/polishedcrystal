	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $24, $25, $26, $36, $28, $29, $2a, $37, $38, $2d, $2e, $2f
	db $39, $3a, $32, $33, $3b, $3c, $3d, $3e, $3f, $40, $41, $42
	db $43
.frame3
	db $02 ; bitmask
	db $24, $25, $44, $45, $28, $29, $2a, $2b, $46, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $47, $48, $3f, $49, $4a
.frame4
	db $03 ; bitmask
	db $24, $25, $26, $36, $28, $29, $2a, $2b, $4b, $2d, $2e, $2f
	db $30, $4c, $32, $33, $4d, $48, $3f, $00, $4a
.frame5
	db $04 ; bitmask
	db $4e, $4f, $50, $51, $52
