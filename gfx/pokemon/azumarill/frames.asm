	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $02, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
.frame2
	db $01 ; bitmask
	db $02, $02, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $02
.frame3
	db $02 ; bitmask
	db $02, $31, $02, $02, $32, $33, $3c, $3d, $34, $35, $3e, $3f
	db $36, $37, $40, $41, $38, $39, $42, $43, $3a, $3b, $44, $45
	db $02
.frame4
	db $03 ; bitmask
	db $46, $47
