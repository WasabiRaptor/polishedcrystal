
	db 105, 105,  75,  50,  65, 100
    evs  1,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 75 ; catch rate
	db 157 ; base exp
	db NO_ITEM, NUGGET ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/muk_alola/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
	