	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32
.frame2
	db $01 ; bitmask
	db $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
.frame3
	db $02 ; bitmask
	db $3d, $3e, $00, $33, $34, $3f, $40, $41, $36, $37, $38, $39
	db $3a, $42, $43, $3b, $3c, $44, $45, $46, $47, $48, $49
.frame4
	db $03 ; bitmask
	db $3d, $3e, $00, $33, $34, $3f, $40, $41, $36, $37, $38, $39
	db $3a, $42, $43, $3b, $3c, $44, $45, $46, $4a, $4b, $4c, $4d
	db $4e, $4f, $50, $51, $52
.frame5
	db $03 ; bitmask
	db $53, $54, $00, $33, $34, $55, $56, $41, $36, $57, $58, $39
	db $3a, $42, $43, $3b, $3c, $59, $5a, $46, $5b, $5c, $4c, $4d
	db $4e, $4f, $50, $51, $52
.frame6
	db $04 ; bitmask
	db $5d, $5e
