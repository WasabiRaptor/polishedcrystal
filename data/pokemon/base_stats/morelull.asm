
	db  40,  35,  55,  15,  65,  75
    evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 190 ; catch rate
	db 57 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/morelull/front.dimensions"
	db ILLUMINATE, EFFECT_SPORE	; abilities
	db RAIN_DISH	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
	