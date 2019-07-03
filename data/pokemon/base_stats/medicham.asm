	dw 00308
	db  60,  60,  75,  80,  60,  75
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, PSYCHIC ; type
	db 90 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/medicham/front.dimensions"
	db HUGE_POWER, HUGE_POWER	; abilities
	db INNER_FOCUS	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups 

	; tm/hm learnset
	tmhm
	; end
	