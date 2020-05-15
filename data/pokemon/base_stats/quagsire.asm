
	dw 00195 ;national dex no

	db  95,  85,  85,  35,  65,  65
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/quagsire/front.dimensions"
	db DAMP, WATER_ABSORB     ; abilities
	db UNAWARE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
