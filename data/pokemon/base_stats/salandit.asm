
	dw 00757 ;national dex no

	db  48,  44,  40,  77,  71,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/salandit/front.dimensions"
	db CORROSION, CORROSION     ; abilities
	db OBLIVIOUS    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
