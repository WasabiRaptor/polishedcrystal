
	db  70, 130, 100,  65,  55,  80
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/scizor/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, ROOST, DOUBLE_TEAM, FLASH_CANNON, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROCK_SMASH, FALSE_SWIPE, X_SCISSOR, ENDURE, ACROBATICS, GIGA_IMPACT, U_TURN, SWORDS_DANCE, CUT, FLY, STRENGTH, COUNTER, DOUBLE_EDGE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, IRON_HEAD, KNOCK_OFF, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
