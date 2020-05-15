
	dw 00709 ;national dex no

	db  85, 110,  76,  56,  65,  82
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/trevenant/front.dimensions"
	db NATURAL_CURE, FRISK     ; abilities
	db HARVEST    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
