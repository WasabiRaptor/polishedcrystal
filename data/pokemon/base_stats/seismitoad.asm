	dw undefined ;national dex no
	
	db 105,  95,  75,  74,  85,  75
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/seismitoad/front.dimensions"  
	db SWIFT SWIM, POISON TOUCH     ; abilities
	db WATER ABSORB    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
