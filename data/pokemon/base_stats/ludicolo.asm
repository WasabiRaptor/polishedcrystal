
	dw 00272 ;national dex no

	db  80,  70,  70,  70,  90, 100
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ludicolo/front.dimensions"
	db SWIFT_SWIM, RAIN_DISH     ; abilities
	db OWN_TEMPO    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
