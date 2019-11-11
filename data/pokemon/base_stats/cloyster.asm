	dw undefined ;national dex no
	
	db  50,  95, 180,  70,  85,  45
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cloyster/front.dimensions"  
	db SHELL ARMOR, SKILL LINK     ; abilities
	db OVERCOAT    ; hidden ability
	db Slow ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
