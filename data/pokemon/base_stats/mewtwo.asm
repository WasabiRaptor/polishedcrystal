
	dw 00150 ;national dex no

	db 106, 110,  90, 130, 154,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mewtwo/front.dimensions"
	db PRESSURE, PRESSURE     ; abilities
	db UNNERVE    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
