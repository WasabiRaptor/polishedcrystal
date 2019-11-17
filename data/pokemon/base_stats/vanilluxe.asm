	dw undefined ;national dex no
	
	db  71,  95,  85,  79, 110,  95
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vanilluxe/front.dimensions"  
	db ICE BODY, SNOW WARNING     ; abilities
	db WEAK ARMOR    ; hidden ability
	db Slow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
