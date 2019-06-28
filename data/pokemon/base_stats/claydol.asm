
	db  60,  70, 105,  75,  70, 120
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db GROUND, PSYCHIC ; type
	db 90 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/claydol/front.dimensions"
	db LEVITATE, LEVITATE	; abilities
	db LEVITATE	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
