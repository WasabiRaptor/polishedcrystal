	dw undefined ;national dex no
	
	db  55,  45,  45,  15,  25,  25
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/wooper/front.dimensions"  
	db DAMP, WATER ABSORB     ; abilities
	db UNAWARE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
