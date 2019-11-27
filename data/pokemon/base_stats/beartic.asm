	dw undefined ;national dex no
	
	db  95, 130,  80,  50,  70,  80
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/beartic/front.dimensions"  
	db SNOW CLOAK, SLUSH RUSH     ; abilities
	db SWIFT SWIM    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
