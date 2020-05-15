
	dw 00972 ;national dex no

	db  50,  65, 107,  86, 105, 107
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rotom_5/front.dimensions"
	db LEVITATE, LEVITATE     ; abilities
	db LEVITATE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
