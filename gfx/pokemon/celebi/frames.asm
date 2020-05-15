	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
	db $25, $26, $27, $28, $29, $2a, $2b, $2c, $04, $2d, $04
.frame2
	db $01 ; bitmask
	db $04, $2e, $1d, $04, $2f, $30, $31, $32, $22, $33, $34, $35
	db $36, $27, $37, $38, $39, $3a, $2c, $04, $04, $04
.frame3
	db $01 ; bitmask
	db $04, $3b, $04, $04, $3c, $3d, $3e, $3f, $22, $40, $41, $42
	db $43, $27, $44, $45, $46, $47, $2c, $04, $04, $04
.frame4
	db $02 ; bitmask
	db $04, $04, $04, $04, $3c, $48, $49, $32, $22, $4a, $4b, $4c
	db $4d, $27, $4e, $4f, $50, $2c, $04, $04, $04
.frame5
	db $03 ; bitmask
	db $51
.frame6
	db $04 ; bitmask
	db $51, $52
.frame7
	db $05 ; bitmask
	db $53, $54
