	dw 00229
	db  75,  90,  50,  95, 110,  80
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/houndoom/front.dimensions"
	db EARLY_BIRD ; ability 1
	db FLASH_FIRE ; ability 2
	db SOLAR_POWER ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLAR_BEAM, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SMASH, DARK_PULSE, ENDURE, WILL_O_WISP, GIGA_IMPACT, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, HEADBUTT, HYPER_VOICE, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
