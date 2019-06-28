
	db  95,  65,  65,  60, 110, 130
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sylveon/front.dimensions"
	db CUTE_CHARM ; ability 1
	db SERENE_GRACE ; ability 2
	db PIXILATE ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, FLASH, CUT, DOUBLE_EDGE, HYPER_VOICE, SKILL_SWAP, SLEEP_TALK, SWAGGER
	; end
