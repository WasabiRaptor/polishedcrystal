	dw 00166
	db  55,  35,  50,  85,  55, 110
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 137 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ledian/front.dimensions"
	db SWARM ; ability 1
	db EARLY_BIRD ; ability 2
	db IRON_FIST ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DIG, ROOST, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SMASH, FOCUS_BLAST, ENDURE, DRAIN_PUNCH, ACROBATICS, GIGA_IMPACT, U_TURN, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
