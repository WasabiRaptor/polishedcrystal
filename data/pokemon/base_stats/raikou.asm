
	db  90,  85,  75, 115, 115, 100
    evs  0,   0,   0,   2,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/raikou/front.dimensions"
	db PRESSURE ; ability 1
	db INNER_FOCUS ; ability 2
	db VOLT_ABSORB ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, WILD_CHARGE, REST, ROCK_SMASH, ENDURE, GIGA_IMPACT, FLASH, VOLT_SWITCH, THUNDER_WAVE, CUT, STRENGTH, BODY_SLAM, DOUBLE_EDGE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
