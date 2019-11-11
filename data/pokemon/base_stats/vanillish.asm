	dw undefined ;national dex no
	
	db  51,  65,  65,  59,  80,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vanillish/front.dimensions"  
	db ICE BODY, SNOW CLOAK     ; abilities
	db WEAK ARMOR    ; hidden ability
	db Slow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
