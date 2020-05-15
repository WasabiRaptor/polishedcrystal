
	dw 00644 ;national dex no

	db 100, 150, 120,  90, 120, 100
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zekrom/front.dimensions"
	db TERAVOLT, TERAVOLT     ; abilities
	db TERAVOLT    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
