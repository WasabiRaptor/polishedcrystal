
	dw 00679 ;national dex no

	db  45,  80, 100,  28,  35,  37
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/honedge/front.dimensions"
	db NO_GUARD, NO_GUARD     ; abilities
	db NO_GUARD    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
