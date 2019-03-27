
	db  69,  55,  45,  15,  55,  55
    evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 190 ; catch rate
	db 59 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/foongus/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
	