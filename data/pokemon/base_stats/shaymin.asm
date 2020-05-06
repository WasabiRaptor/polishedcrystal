	dw 00492
	db 100, 100, 100, 100, 100, 100
    evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shaymin/front.dimensions"
	db NATURAL_CURE, NATURAL_CURE	; abilities
	db NATURAL_CURE	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
