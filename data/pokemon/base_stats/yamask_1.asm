
	dw 00997 ;national dex no

	db  38,  55,  85,  30,  30,  65
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/yamask_1/front.dimensions"
	db WANDERING_SPIRIT, WANDERING_SPIRIT     ; abilities
	db WANDERING_SPIRIT    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
