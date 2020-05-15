	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $3e, $34, $35, $36, $3f, $38, $39, $3a, $3b
	db $3c, $40, $41, $42, $43
.frame3
	db $02 ; bitmask
	db $31, $44, $45, $46, $47, $34, $35, $48, $49, $38, $39, $3a
	db $3b, $4a, $4b, $4c, $04, $4d, $4e, $4f, $04, $50, $51, $52
	db $04, $04, $53, $54, $55
.frame4
	db $03 ; bitmask
	db $56, $57
