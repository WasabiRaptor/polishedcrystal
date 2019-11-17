	dw undefined ;national dex no
	
	db  75,  80,  70, 130,  65,  50
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/eiscue_1/front.dimensions"  
	db ICE FACE, ICE FACE     ; abilities
	db ICE FACE    ; hidden ability
	db Slow ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
