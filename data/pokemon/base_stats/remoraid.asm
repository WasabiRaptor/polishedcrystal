	dw undefined ;national dex no
	
	db  35,  65,  35,  65,  65,  35
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/remoraid/front.dimensions"  
	db HUSTLE, SNIPER     ; abilities
	db MOODY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
