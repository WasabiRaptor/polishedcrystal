
	db  68,  70,  92,  42,  50, 132
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, BUG ; type
	db 100 ; catch rate
	db 159 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/araquanid/front.dimensions"
	db WATER_BUBBLE, WATER_BUBBLE	; abilities
	db WATER_ABSORB	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
