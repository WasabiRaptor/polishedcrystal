
	dw 00815 ;national dex no

	db  80, 116,  75, 119,  65,  75
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cinderace/front.dimensions"
	db BLAZE, BLAZE     ; abilities
	db LIBERO    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
