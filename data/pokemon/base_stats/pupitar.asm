
	db  70,  84,  70,  51,  65,  70
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 7 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pupitar/front.dimensions"
	db SHED_SKIN ; ability 1
	db SHED_SKIN ; ability 2
	db BATTLE_ARMOR ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SANDSTORM, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, ROCK_SMASH, DARK_PULSE, ENDURE, STONE_EDGE, BODY_SLAM, DOUBLE_EDGE, EARTH_POWER, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
