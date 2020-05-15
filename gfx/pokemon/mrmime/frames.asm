	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
	dw .frame8
.frame1
	db $00 ; bitmask
	db $00, $24, $25, $00, $26, $27
.frame2
	db $01 ; bitmask
	db $00, $00, $28, $29, $00, $2a, $2b, $2c, $2d
.frame3
	db $02 ; bitmask
	db $00, $00, $28, $29, $00, $2a, $2b, $2c, $2e, $2f, $30, $31
	db $32, $33, $34, $35, $36
.frame4
	db $03 ; bitmask
	db $00, $24, $25, $00, $26, $27, $2e, $37, $30, $31, $32, $33
	db $34, $35, $36
.frame5
	db $04 ; bitmask
	db $2e, $37, $30, $31, $32, $33, $34, $35, $36
.frame6
	db $05 ; bitmask
	db $38, $39
.frame7
	db $06 ; bitmask
	db $3a, $3b, $3c, $3d, $3e, $3f
.frame8
	db $07 ; bitmask
	db $00, $00, $28, $29, $00, $2a, $2b, $2c, $40, $3b, $3c, $3d
	db $3e, $3f
