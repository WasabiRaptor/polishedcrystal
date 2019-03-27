
	db  25,  35,  70,  45,  95,  55
    evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, METAL_COAT ; items
	dn GENDERLESS, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/magnemite/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SWIFT, SUBSTITUTE, FACADE, WILD_CHARGE, REST, ENDURE, EXPLOSION, FLASH, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, DOUBLE_EDGE, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
