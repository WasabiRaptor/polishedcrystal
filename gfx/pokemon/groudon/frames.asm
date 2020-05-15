	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e
.frame2
	db $01 ; bitmask
	db $06, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
	db $4a, $4b, $4c, $4d
.frame3
	db $02 ; bitmask
	db $06, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58
	db $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64
	db $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
.frame4
	db $01 ; bitmask
	db $06, $3f, $40, $41, $42, $43, $6f, $70, $46, $47, $71, $72
	db $4a, $4b, $4c, $4d
.frame5
	db $03 ; bitmask
	db $31, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d
	db $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89
	db $8a, $8b, $8c, $8d, $8e, $8f, $90, $91
.frame6
	db $03 ; bitmask
	db $06, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c
	db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8
	db $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0
.frame7
	db $04 ; bitmask
	db $06, $b1, $b2, $b3, $b4, $06, $b5, $b6, $b7, $b8, $b9, $ba
	db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6
	db $c7, $c8, $c9, $a9, $aa, $ca, $cb, $ad, $ae, $af, $b0
