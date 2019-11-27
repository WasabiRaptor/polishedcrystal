	dw undefined ;national dex no
	
	db  80,  80,  80,  80,  80,  80
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/glalie/front.dimensions"  
	db INNER FOCUS, ICE BODY     ; abilities
	db MOODY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
