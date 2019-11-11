	dw undefined ;national dex no
	
	db 125,  58,  58,  67,  76,  76
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lanturn/front.dimensions"  
	db VOLT ABSORB, ILLUMINATE     ; abilities
	db WATER ABSORB    ; hidden ability
	db Slow ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
