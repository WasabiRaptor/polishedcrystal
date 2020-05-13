	dw 00678
	db  74,  48,  76, 104,  83,  81
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 75 ; catch rate
	db 163 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/meowstic_m/front.dimensions"
	db KEEN_EYE, INFILTRATOR	; abilities
	db PRANKSTER	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset the main difference between male and female meowstic is the learnset, male is more defense female is more offense
	tmhm
	; end
