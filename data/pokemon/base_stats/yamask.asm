	dw 00562
	db  38,  30,  85,  30,  55,  65
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 190 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/yamask/front.dimensions"
	db MUMMY, MUMMY	; abilities
	db MUMMY	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
