	dw 00726
	db  65,  85,  50,  90,  80,  50
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/torracat/front.dimensions"
	db BLAZE, BLAZE	; abilities
	db INTIMIDATE	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
	