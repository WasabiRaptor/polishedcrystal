
	db  77, 120,  90,  48,  60,  90
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/druddigon/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DRAGON, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm
	; end
	