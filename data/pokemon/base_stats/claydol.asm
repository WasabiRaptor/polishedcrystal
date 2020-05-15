
	dw 00344 ;national dex no

	db  60,  70, 105,  75,  70, 120
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db GROUND, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/claydol/front.dimensions"
	db LEVITATE, LEVITATE     ; abilities
	db LEVITATE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
