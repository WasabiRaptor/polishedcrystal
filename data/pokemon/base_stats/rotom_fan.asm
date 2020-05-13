	dw 00479
	db  50,  65, 107,  86, 105, 107
    evs  0,   0,   0,   0,   1,   1
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 45 ; catch rate
	db 154 ; base exp
	dw 0 ; field capabilities
	dn GENDERLESS, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rotom_fan/front.dimensions"
	db LEVITATE, LEVITATE	; abilities
	db LEVITATE	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
