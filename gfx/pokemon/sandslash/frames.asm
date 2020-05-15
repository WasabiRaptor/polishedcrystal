	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26
.frame2
	db $01 ; bitmask
	db $00, $27, $28, $29, $2a, $2b, $2c, $2d, $25, $2e, $2f, $30
	db $31, $32, $33, $34, $35
.frame3
	db $02 ; bitmask
	db $36, $37, $38, $24, $39, $3a, $25, $3b, $3c, $3d, $3e
.frame4
	db $03 ; bitmask
	db $3f, $40, $24, $41, $42, $25, $43, $44
.frame5
	db $04 ; bitmask
	db $45, $46, $47, $48
