	dw undefined ;national dex no
	
	db 105, 140,  55,  95,  30,  55
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/darmanitan_2/front.dimensions"  
	db GORILLA TACTICS, GORILLA TACTICS     ; abilities
	db ZEN MODE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
