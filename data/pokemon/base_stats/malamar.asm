	dw undefined ;national dex no
	
	db  86,  92,  88,  73,  68,  75
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/malamar/front.dimensions"  
	db CONTRARY, SUCTION CUPS     ; abilities
	db INFILTRATOR    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
