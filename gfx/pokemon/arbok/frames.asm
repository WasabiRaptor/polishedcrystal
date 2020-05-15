	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $00, $3a, $3b
.frame2
	db $01 ; bitmask
	db $32, $3c, $3d, $3e, $3f, $00, $00, $40, $41, $42, $43
.frame3
	db $02 ; bitmask
	db $44, $45, $46, $47, $48, $49, $4a, $00, $4b, $4c, $4d, $4e
	db $4f
.frame4
	db $03 ; bitmask
	db $50, $51, $52, $53
.frame5
	db $04 ; bitmask
	db $54, $55, $56, $57, $53
.frame6
	db $04 ; bitmask
	db $54, $58, $59, $5a, $53
