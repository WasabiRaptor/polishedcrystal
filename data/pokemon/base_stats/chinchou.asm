
	db  75,  38,  38,  67,  56,  56
    evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/chinchou/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SUBSTITUTE, FACADE, WILD_CHARGE, REST, ATTRACT, DAZZLINGLEAM, SCALD, ENDURE, WATER_PULSE, FLASH, VOLT_SWITCH, THUNDER_WAVE, SURF, WHIRLPOOL, WATERFALL, DOUBLE_EDGE, ICY_WIND, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZAP_CANNON
	; end
