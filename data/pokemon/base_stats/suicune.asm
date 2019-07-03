	dw 00245
	db 100,  75, 115,  85,  90, 115
    evs  0,   0,   1,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/suicune/front.dimensions"
	db PRESSURE ; ability 1
	db INNER_FOCUS ; ability 2
	db WATER_ABSORB ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, ROCK_SMASH, SCALD, ENDURE, WATER_PULSE, AVALANCHE, GIGA_IMPACT, CUT, SURF, WHIRLPOOL, WATERFALL, BODY_SLAM, DOUBLE_EDGE, HEADBUTT, ICY_WIND, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
