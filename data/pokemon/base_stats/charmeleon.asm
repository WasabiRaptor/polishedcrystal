
	dw 00005 ;national dex no

	db  58,  64,  58,  80,  80,  65
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/charmeleon/front.dimensions"
	db BLAZE, BLAZE     ; abilities
	db SOLAR_POWER    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
