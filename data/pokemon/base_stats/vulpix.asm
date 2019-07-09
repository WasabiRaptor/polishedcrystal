	dw 00037
	db  38,  41,  40,  65,  50,  65
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 60 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	dn FEMALE_75, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
	db FLASH_FIRE ; ability 1
	db FOREWARN ; ability 2
	db DROUGHT ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, SAFEGUARD, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ENERGY_BALL, DARK_PULSE, ENDURE, WILL_O_WISP, BODY_SLAM, DOUBLE_EDGE, HEADBUTT, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
