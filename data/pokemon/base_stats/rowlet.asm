
	dw 00722 ;national dex no

	db  68,  55,  55,  42,  50,  50
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rowlet/front.dimensions"
	db OVERGROW, OVERGROW     ; abilities
	db LONG_REACH    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
