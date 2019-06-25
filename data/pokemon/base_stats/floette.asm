
	db  54,  45,  47,  52,  75,  98
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 120 ; catch rate
	db 130 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn ALL_FEMALE, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/floette/front.dimensions"
	db FLOWER_VEIL, FLOWER_VEIL	; abilities
	db SYMBIOSIS	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end
	