
	db  80,  50,  50, 105,  95, 135
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 25 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cryogonal/front.dimensions"
	db LEVITATE, LEVITATE	; abilities
	db LEVITATE	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
	