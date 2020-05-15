
	dw 00921 ;national dex no

	db  50,  65,  65, 100,  90,  90
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mr__mime_1/front.dimensions"
	db VITAL_SPIRIT, SCREEN_CLEANER     ; abilities
	db ICE_BODY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
