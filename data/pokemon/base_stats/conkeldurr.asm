	dw 00534
	db 105, 140,  95,  45,  55,  65
    evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 227 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_25, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/conkeldurr/front.dimensions"
	db GUTS, SHEER_FORCE	; abilities
	db IRON_FIST	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
	