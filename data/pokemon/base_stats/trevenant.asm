	dw 00709
	db  85, 110,  76,  56,  65,  82
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GRASS ; type
	db 60 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/trevenant/front.dimensions"
	db NATURAL_CURE, FRISK	; abilities
	db HARVEST	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
	