
	db  80, 125,  75,  85,  40,  95
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/heracross/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, ROCK_SMASH, FOCUS_BLAST, FALSE_SWIPE, ENDURE, SHADOW_CLAW, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, HEADBUTT, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
