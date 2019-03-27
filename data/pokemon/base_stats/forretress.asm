
	db  75,  90, 140,  40,  60,  60
    evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 163 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/forretress/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, ROCK_SMASH, ENDURE, EXPLOSION, GIGA_IMPACT, VOLT_SWITCH, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, HEADBUTT, IRON_HEAD, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
