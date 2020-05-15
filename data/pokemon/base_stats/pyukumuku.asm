
	dw 00771 ;national dex no

	db  55,  60, 130,   5,  30, 130
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pyukumuku/front.dimensions"
	db INNARDS_OUT, INNARDS_OUT     ; abilities
	db UNAWARE    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
