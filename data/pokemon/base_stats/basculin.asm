
	dw 00550 ;national dex no

	db  70,  92,  65,  98,  80,  55
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/basculin/front.dimensions"
	db RECKLESS, ADAPTABILITY     ; abilities
	db MOLD_BREAKER    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
