
	db  55,  40,  40,  35,  65,  45
    evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mareep/front.dimensions"
	db STATIC ; ability 1
	db STATIC ; ability 2
	db MOTOR_DRIVE ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, WILD_CHARGE, REST, ATTRACT, ENDURE, FLASH, THUNDER_WAVE, BODY_SLAM, DEFENSE_CURL, DOUBLE_EDGE, HEADBUTT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
