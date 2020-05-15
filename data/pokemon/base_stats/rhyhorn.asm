
	dw 00111 ;national dex no

	db  80,  85,  95,  25,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	db LIGHTNING_ROD, ROCK_HEAD     ; abilities
	db RECKLESS    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
