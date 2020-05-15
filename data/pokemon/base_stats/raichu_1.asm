
	dw 00900 ;national dex no

	db  60,  85,  50, 110,  95,  85
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/raichu_1/front.dimensions"
	db SURGE_SURFER, SURGE_SURFER     ; abilities
	db SURGE_SURFER    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
