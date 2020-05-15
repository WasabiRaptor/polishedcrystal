
	dw 00575 ;national dex no

	db  60,  45,  70,  55,  75,  85
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gothorita/front.dimensions"
	db FRISK, COMPETITIVE     ; abilities
	db SHADOW_TAG    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
