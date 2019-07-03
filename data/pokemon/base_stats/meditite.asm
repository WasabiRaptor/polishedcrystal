	dw 00307
	db  30,  40,  55,  60,  40,  55
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, PSYCHIC ; type
	db 180 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/meditite/front.dimensions"
	db HUGE_POWER, HUGE_POWER	; abilities
	db INNER_FOCUS	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups 

	; tm/hm learnset
	tmhm
	; end
	