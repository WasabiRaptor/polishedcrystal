
	db  20,  10, 230,  05,  10, 230
    evs  0,   0,   1,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 177 ; base exp
	db ORAN_BERRY, ORAN_BERRY ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shuckle/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
