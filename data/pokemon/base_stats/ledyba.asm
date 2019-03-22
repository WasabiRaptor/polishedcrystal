
	db  40,  20,  30,  55,  40,  80
    evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 53 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ledyba/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DIG, ROOST, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SMASH, ENDURE, DRAIN_PUNCH, ACROBATICS, U_TURN, FLASH, SWORDS_DANCE, DOUBLE_EDGE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
