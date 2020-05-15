
	dw 00715 ;national dex no

	db  85,  70,  80, 123,  97,  80
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FLYING, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/noivern/front.dimensions"
	db FRISK, INFILTRATOR     ; abilities
	db TELEPATHY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
