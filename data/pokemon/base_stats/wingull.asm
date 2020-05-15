
	dw 00278 ;national dex no

	db  40,  30,  30,  85,  55,  30
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/wingull/front.dimensions"
	db KEEN_EYE, HYDRATION     ; abilities
	db RAIN_DISH    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_FLYING ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
