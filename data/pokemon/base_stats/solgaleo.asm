
	dw 00791 ;national dex no

	db 137, 137, 107,  97, 113,  89
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/solgaleo/front.dimensions"
	db FULL_METAL_BODY, FULL_METAL_BODY     ; abilities
	db FULL_METAL_BODY    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
