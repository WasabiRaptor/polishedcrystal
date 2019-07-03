	dw 00620
	db  65, 125,  60, 105,  95,  60
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mienshao/front.dimensions"
	db INNER_FOCUS, REGENERATOR	; abilities
	db RECKLESS	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
	