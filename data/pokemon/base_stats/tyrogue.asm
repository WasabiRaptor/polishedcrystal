
	db  35,  35,  35,  35,  35,  35
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 42 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn ALL_MALE, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/tyrogue/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, ROCK_SMASH, ENDURE, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, HEADBUTT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
