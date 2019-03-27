
	db  44,  50,  91,  10,  24,  86
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 255 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ferroseed/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
