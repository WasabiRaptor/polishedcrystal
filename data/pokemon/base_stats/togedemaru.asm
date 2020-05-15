
	dw 00777 ;national dex no

	db  65,  98,  63,  96,  40,  73
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togedemaru/front.dimensions"
	db IRON_BARBS, LIGHTNING_ROD     ; abilities
	db STURDY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
