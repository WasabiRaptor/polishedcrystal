
	db  70, 145,  88, 112, 140,  70
    evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, STEEL ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lucario/front.dimensions"
	db ADAPTABILITY, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups 

	; tm/hm learnset
	tmhm
	; end
	