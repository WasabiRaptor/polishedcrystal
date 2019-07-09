	dw 00145
	db  90,  90,  85, 100, 125,  90
    evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zapdos/front.dimensions"
	db PRESSURE ; ability 1
	db DRIZZLE ; ability 2
	db STATIC ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, ROOST, DOUBLE_TEAM, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, WILD_CHARGE, REST, STEEL_WING, ROCK_SMASH, ENDURE, GIGA_IMPACT, U_TURN, FLASH, VOLT_SWITCH, THUNDER_WAVE, FLY, DOUBLE_EDGE, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
