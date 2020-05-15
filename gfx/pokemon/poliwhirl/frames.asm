	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $02, $02, $24, $25, $02, $26, $27, $28, $29, $2a, $2b
.frame2
	db $01 ; bitmask
	db $02, $02, $24, $25, $02, $26, $27, $28, $29, $2a, $2c, $2d
	db $2b, $2e
.frame3
	db $02 ; bitmask
	db $02, $02, $24, $25, $02, $2f, $27, $28, $29, $2a, $2c, $2d
	db $2b, $2e, $30
.frame4
	db $03 ; bitmask
	db $02, $02, $24, $25, $02, $2f, $27, $28, $29, $2a, $31, $32
	db $33, $2c, $34, $35, $2d, $36, $37, $38, $2e, $30
.frame5
	db $04 ; bitmask
	db $39, $3a, $3b, $3c, $3d, $3e
