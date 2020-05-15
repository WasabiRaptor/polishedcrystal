
	dw 00689 ;national dex no

	db  72, 105, 115,  68,  54,  86
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/barbaracle/front.dimensions"
	db TOUGH_CLAWS, SNIPER     ; abilities
	db PICKPOCKET    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
