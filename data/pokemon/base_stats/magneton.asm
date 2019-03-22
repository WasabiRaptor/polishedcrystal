
	db  50,  60,  95,  70, 120,  70
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 163 ; base exp
	db NO_ITEM, METAL_COAT ; items
	dn GENDERLESS, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/magneton/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SWIFT, SUBSTITUTE, FACADE, WILD_CHARGE, REST, ENDURE, EXPLOSION, GIGA_IMPACT, FLASH, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, DOUBLE_EDGE, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
