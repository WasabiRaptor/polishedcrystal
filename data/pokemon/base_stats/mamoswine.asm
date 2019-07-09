	dw 00473
	db 110, 130,  80,  80,  70,  60
    evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 239 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mamoswine/front.dimensions"
	db OBLIVIOUS ; ability 1
	db SNOW_CLOAK ; ability 2
	db THICK_FAT ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, REFLECT, SANDSTORM, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, ROCK_SMASH, ENDURE, AVALANCHE, GIGA_IMPACT, STONE_EDGE, STRENGTH, EARTH_POWER, HEADBUTT, ICY_WIND, IRON_HEAD, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
	