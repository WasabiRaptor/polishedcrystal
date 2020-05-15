
	dw 00563 ;national dex no

	db  58,  50, 145,  30,  95, 105
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cofagrigus/front.dimensions"
	db MUMMY, MUMMY     ; abilities
	db MUMMY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
