	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
.frame2
	db $01 ; bitmask
	db $2f, $00, $30, $31, $32, $33, $34, $35, $36, $37
.frame3
	db $02 ; bitmask
	db $38, $39, $3a, $3b, $30, $3c, $3d, $3e, $3f, $40, $00, $41
	db $42, $43
.frame4
	db $02 ; bitmask
	db $38, $39, $3a, $3b, $30, $3c, $44, $3e, $45, $46, $00, $41
	db $42, $43
