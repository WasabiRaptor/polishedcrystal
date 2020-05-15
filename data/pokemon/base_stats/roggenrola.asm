
	dw 00524 ;national dex no

	db  55,  75,  85,  15,  25,  25
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/roggenrola/front.dimensions"
	db STURDY, WEAK_ARMOR     ; abilities
	db SAND_FORCE    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
