	dw undefined ;national dex no
	
	db  40,  50,  90,  65,  30,  55
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, BUG ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/skorupi/front.dimensions"  
	db BATTLE ARMOR, SNIPER     ; abilities
	db KEEN EYE    ; hidden ability
	db Slow ; growth rate
	dn EGG_BUG, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
