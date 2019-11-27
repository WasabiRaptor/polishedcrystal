	dw undefined ;national dex no
	
	db  80,  95,  82,  75,  60,  82
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/garbodor/front.dimensions"  
	db STENCH, WEAK ARMOR     ; abilities
	db AFTERMATH    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
