
	db  50,  75,  90,  40,  10,  35
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sandshrew_alola/front.dimensions"
	db SNOW_CLOAK, SNOW_CLOAK	; abilities
	db SLUSH_RUSH	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
