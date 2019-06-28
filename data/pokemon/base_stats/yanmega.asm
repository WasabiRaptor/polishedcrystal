
	db  86,  76,  86,  95, 116,  56
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 30 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/yanmega/front.dimensions"
	db SPEED_BOOST ; ability 1
	db TINTED_LENS ; ability 2
	db LEVITATE ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm DRAGON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, ROOST, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, LEECH_LIFE, ENDURE, DRAGON_PULSE, GIGA_IMPACT, U_TURN, FLASH, FLY, DREAM_EATER, HEADBUTT, SLEEP_TALK, SWAGGER
	; end
	