	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e
.frame2
	db $01 ; bitmask
	db $00, $3f, $40, $00, $3a, $41, $42, $43, $44, $45, $46, $47
	db $48, $49, $4a, $4b, $4c, $00, $00, $00
.frame3
	db $01 ; bitmask
	db $00, $3f, $40, $00, $3a, $41, $42, $4d, $4e, $45, $46, $4f
	db $50, $49, $4a, $51, $52, $00, $00, $00
.frame4
	db $02 ; bitmask
	db $00, $3f, $40, $00, $3a, $41, $42, $4d, $4e, $45, $46, $4f
	db $50, $53, $54, $49, $4a, $51, $52, $55, $56, $00, $00, $00
.frame5
	db $02 ; bitmask
	db $00, $3f, $40, $00, $3a, $41, $42, $4d, $4e, $45, $46, $4f
	db $50, $57, $58, $49, $4a, $51, $52, $59, $5a, $00, $00, $00
