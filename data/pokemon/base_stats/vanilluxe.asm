
	dw 00584 ;national dex no

	db  71,  95,  85,  79, 110,  95
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vanilluxe/front.dimensions"
	db ICE_BODY, SNOW_WARNING     ; abilities
	db WEAK_ARMOR    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
