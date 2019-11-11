	dw undefined ;national dex no
	
	db 130,  85,  80,  60,  85,  95
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lapras/front.dimensions"  
	db WATER ABSORB, SHELL ARMOR     ; abilities
	db HYDRATION    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
