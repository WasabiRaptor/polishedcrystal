	dw undefined ;national dex no
	
	db  70,  92,  65,  98,  80,  55
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/basculin/front.dimensions"  
	db RECKLESS, ADAPTABILITY     ; abilities
	db MOLD BREAKER    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
