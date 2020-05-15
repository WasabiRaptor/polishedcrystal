
	dw 00834 ;national dex no

	db  90, 115,  90,  74,  48,  68
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drednaw/front.dimensions"
	db STRONG_JAW, SHELL_ARMOR     ; abilities
	db SWIFT_SWIM    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
