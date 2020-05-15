
	dw 00202 ;national dex no

	db 190,  33,  58,  33,  33,  58
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/wobbuffet/front.dimensions"
	db SHADOW_TAG, SHADOW_TAG     ; abilities
	db TELEPATHY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
