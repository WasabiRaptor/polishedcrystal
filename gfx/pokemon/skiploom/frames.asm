	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $00, $24, $25, $26, $27, $28, $29, $2a, $2b, $00, $00, $2c
.frame2
	db $01 ; bitmask
	db $2d, $2e, $00, $24, $25, $2f, $30, $26, $27, $28, $31, $32
	db $29, $2a, $2b, $33, $34, $00, $00, $2c
.frame3
	db $01 ; bitmask
	db $2d, $2e, $00, $35, $25, $2f, $30, $36, $37, $38, $31, $32
	db $39, $3a, $3b, $33, $34, $00, $3c, $2c
.frame4
	db $02 ; bitmask
	db $3d, $3e, $3f
.frame5
	db $03 ; bitmask
	db $00, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
