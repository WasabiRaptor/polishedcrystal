	dw 00196
	db  65,  65,  60, 110, 130,  95
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/espeon/front.dimensions"
	db SYNCHRONIZE, MAGIC_GUARD	; abilities
	db MAGIC_BOUNCE	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, ENDURE, GIGA_IMPACT, FLASH, CUT, BODY_SLAM, DOUBLE_EDGE, DREAM_EATER, HEADBUTT, HYPER_VOICE, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK, ZAP_CANNON, ZEN_HEADBUTT
	; end
