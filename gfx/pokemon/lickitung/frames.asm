	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $00, $00, $31, $32, $00, $33, $34, $35, $36, $37, $38, $39
.frame2
	db $01 ; bitmask
	db $00, $00, $3a, $3b, $3c, $3d, $3e, $3f
.frame3
	db $01 ; bitmask
	db $40, $41, $42, $43, $44, $45, $46, $47
.frame4
	db $02 ; bitmask
	db $48, $49, $4a, $4b
