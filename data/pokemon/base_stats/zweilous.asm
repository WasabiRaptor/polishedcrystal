
	db  72,  85,  70,  58,  65,  70
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DARK ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 7 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zweilous/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
	