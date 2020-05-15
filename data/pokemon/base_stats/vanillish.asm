
	dw 00583 ;national dex no

	db  51,  65,  65,  59,  80,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vanillish/front.dimensions"
	db ICE_BODY, SNOW_CLOAK     ; abilities
	db WEAK_ARMOR    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
