	dw undefined ;national dex no
	
	db  72,  80,  49,  40,  40,  49
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cufant/front.dimensions"  
	db SHEER FORCE, SHEER FORCE     ; abilities
	db HEAVY METAL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
