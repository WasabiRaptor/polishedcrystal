
	db  65,  95,  85,  85,  55,  55
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 45 ; catch rate
	db 88 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/qwilfish/front.dimensions"
	db POISON_POINT ; ability 1
	db SWIFT_SWIM ; ability 2
	db INTIMIDATE ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, SCALD, ENDURE, WATER_PULSE, EXPLOSION, POISON_JAB, THUNDER_WAVE, GYRO_BALL, SWORDS_DANCE, SURF, WHIRLPOOL, WATERFALL, AQUA_TAIL, DEFENSE_CURL, DOUBLE_EDGE, HEADBUTT, ICY_WIND, ROLLOUT, SLEEP_TALK, SWAGGER
	; end
