
	db  74,  48,  76, 104,  83,  81
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 75 ; catch rate
	db 163 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/meowstic_f/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset the main difference between male and female meowstic is the learnset, male is more defense female is more offense
	tmhm
	; end
	