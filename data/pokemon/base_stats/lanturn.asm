	dw 00171
	db 125,  58,  58,  67,  76,  76
    evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lanturn/front.dimensions"
	db VOLT_ABSORB ; ability 1
	db ILLUMINATE ; ability 2
	db WATER_ABSORB ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, FLASH_CANNON, SUBSTITUTE, FACADE, WILD_CHARGE, REST, ATTRACT, DAZZLINGLEAM, SCALD, ENDURE, WATER_PULSE, GIGA_IMPACT, FLASH, VOLT_SWITCH, THUNDER_WAVE, SURF, WHIRLPOOL, WATERFALL, AQUA_TAIL, DOUBLE_EDGE, ICY_WIND, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZAP_CANNON
	; end
