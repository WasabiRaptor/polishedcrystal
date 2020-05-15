
	dw 00914 ;national dex no

	db  65, 100,  70, 105,  80,  80
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rapidash_1/front.dimensions"
	db RUN_AWAY, PASTEL_VEIL     ; abilities
	db ANTICIPATION    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
