
	dw 00756 ;national dex no

	db  60,  45,  80,  30,  90, 100
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shiinotic/front.dimensions"
	db ILLUMINATE, EFFECT_SPORE     ; abilities
	db RAIN_DISH    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
