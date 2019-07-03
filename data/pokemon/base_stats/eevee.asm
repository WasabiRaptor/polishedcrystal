	dw 00133
	db  55,  55,  50,  55,  45,  65
    evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/eevee/front.dimensions"
	db RUN_AWAY, ADAPTABILITY	; abilities
	db ANTICIPATION	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ENDURE, BODY_SLAM, DOUBLE_EDGE, EARTH_POWER, HEADBUTT, HYPER_VOICE, SLEEP_TALK, SWAGGER
	; end
