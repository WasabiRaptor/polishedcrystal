
	db  75,  80,  55,  35,  25,  35
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_25, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/timburr/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
	