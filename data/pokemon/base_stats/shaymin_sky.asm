
	db 100, 103,  75, 127, 120,  75
    evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shaymin_sky/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
