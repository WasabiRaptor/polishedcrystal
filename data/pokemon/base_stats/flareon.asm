	dw 00136
	db  65, 130,  60,  65,  95, 110
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/flareon/front.dimensions"
	db FLASH_FIRE, DROUGHT	; abilities
	db GUTS	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SMASH, ENDURE, WILL_O_WISP, GIGA_IMPACT, STRENGTH, BODY_SLAM, DOUBLE_EDGE, HEADBUTT, HYPER_VOICE, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
