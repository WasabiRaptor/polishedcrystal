
	dw 00135 ;national dex no

	db  65,  65,  60, 130, 110,  95
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 7 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/jolteon/front.dimensions"
	db VOLT_ABSORB, VOLT_ABSORB     ; abilities
	db QUICK_FEET    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
