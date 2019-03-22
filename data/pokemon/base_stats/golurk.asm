
	db  89, 124,  80,  55,  55,  80
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GHOST ; type
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/golurk/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
