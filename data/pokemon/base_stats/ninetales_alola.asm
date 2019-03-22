
	db  73,  67,  75, 109,  81, 100
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, FAIRY ; type
	db 75 ; catch rate
	db 177 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	dn FEMALE_75, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ninetales_alola/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end TODO, add HAIL TM
