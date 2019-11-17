	dw undefined ;national dex no
	
	db  70,  90, 110,  95,  60,  75
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drapion/front.dimensions"  
	db BATTLE ARMOR, SNIPER     ; abilities
	db KEEN EYE    ; hidden ability
	db Slow ; growth rate
	dn EGG_BUG, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
