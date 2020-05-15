	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27
.frame2
	db $00 ; bitmask
	db $24, $28, $26, $29
.frame3
	db $01 ; bitmask
	db $2a, $2b, $2c, $2d, $2e, $2f, $30, $03, $31, $32, $33, $03
	db $34, $35, $36, $03, $37, $38
.frame4
	db $02 ; bitmask
	db $2a, $2b, $2c, $2d, $2e, $2f, $30, $03, $31, $32, $39, $3a
	db $3b, $03, $34, $35, $3c, $3d, $03, $37, $38
.frame5
	db $02 ; bitmask
	db $2a, $2b, $2c, $2d, $2e, $2f, $30, $03, $31, $3e, $3f, $40
	db $3b, $03, $34, $41, $42, $43, $03, $37, $38
.frame6
	db $02 ; bitmask
	db $2a, $2b, $2c, $2d, $2e, $2f, $30, $03, $31, $44, $45, $46
	db $3b, $03, $34, $47, $48, $49, $03, $37, $38
.frame7
	db $03 ; bitmask
	db $4a, $4b, $4c, $4d, $4e
