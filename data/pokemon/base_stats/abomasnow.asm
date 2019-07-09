	dw 00460
	
	db  90,  92,  75,  60,  92,  85
    evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, ICE ; type
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/abomasnow/front.dimensions"
	db SNOW_WARNING, SNOW_WARNING	; abilities
	db SOUNDPROOF	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
