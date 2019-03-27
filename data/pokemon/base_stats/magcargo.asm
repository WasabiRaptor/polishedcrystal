
	db  60,  50, 120,  30,  90,  80
    evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 151 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/magcargo/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, ROCK_SMASH, ENDURE, WILL_O_WISP, EXPLOSION, GIGA_IMPACT, STONE_EDGE, GYRO_BALL, STRENGTH, BODY_SLAM, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ROLLOUT, SLEEP_TALK, SWAGGER
	; end
