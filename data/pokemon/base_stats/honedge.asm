	dw undefined ;national dex no
	
	db  45,  80, 100,  28,  35,  37
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db STEEL, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/honedge/front.dimensions"  
	db NO GUARD, NO GUARD     ; abilities
	db NO GUARD    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
