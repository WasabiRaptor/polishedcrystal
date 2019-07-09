	dw 00088
	db  80,  80,  50,  25,  40,  50
    evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NUGGET ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/grimer/front.dimensions"
	db STENCH, STICKY_HOLD	; abilities
	db POISON_TOUCH	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, ENDURE, EXPLOSION, POISON_JAB, STONE_EDGE, STRENGTH, BODY_SLAM, FIRE_PUNCH, ICE_PUNCH, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
