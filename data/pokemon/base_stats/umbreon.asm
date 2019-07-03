	dw 00197
	db  95,  65, 110,  65,  60, 130
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/umbreon/front.dimensions"
	db SYNCHRONIZE ; ability 1
	db MAGIC_GUARD ; ability 2
	db INNER_FOCUS ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DARK_PULSE, ENDURE, GIGA_IMPACT, FLASH, CUT, BODY_SLAM, DOUBLE_EDGE, DREAM_EATER, HEADBUTT, HYPER_VOICE, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZAP_CANNON
	; end
