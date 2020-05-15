	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $0c, $0c, $0c
	db $0c
.frame2
	db $01 ; bitmask
	db $2d, $2e, $2f, $30, $31, $32, $0c, $33, $34, $35, $0c, $0c
	db $0c, $0c
.frame3
	db $02 ; bitmask
	db $36, $37, $38, $39, $3a
