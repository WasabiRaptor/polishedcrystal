	dw 00681
	db  60, 150,  50,  60, 150,  50
    evs  0,   2,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GHOST ; type
	db 45 ; catch rate
	db 234 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/aegislash_blade/front.dimensions"
	db STANCE_CHANGE, STANCE_CHANGE	; abilities
	db STANCE_CHANGE	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
