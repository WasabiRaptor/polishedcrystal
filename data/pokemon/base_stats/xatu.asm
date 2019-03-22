
	db  65,  75,  70,  95,  95,  70
    evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FLYING ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/xatu/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, ROOST, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, DAZZLINGLEAM, ENDURE, GIGA_IMPACT, U_TURN, FLASH, THUNDER_WAVE, FLY, DOUBLE_EDGE, DREAM_EATER, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, ZEN_HEADBUTT
	; end
