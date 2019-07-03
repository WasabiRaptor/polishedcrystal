	dw 00123
	db  70, 110,  80, 105,  55,  80
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/scyther/front.dimensions"
	db SWARM ; ability 1
	db TECHNICIAN ; ability 2
	db STEADFAST ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, ROOST, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROCK_SMASH, FALSE_SWIPE, X_SCISSOR, ENDURE, GIGA_IMPACT, U_TURN, SWORDS_DANCE, CUT, FLY, COUNTER, DOUBLE_EDGE, HEADBUTT, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
