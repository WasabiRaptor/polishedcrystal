	dw undefined ;national dex no
	
	db 122, 130,  69,  30,  80,  69
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/copperajah/front.dimensions"  
	db SHEER FORCE, SHEER FORCE     ; abilities
	db HEAVY METAL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
