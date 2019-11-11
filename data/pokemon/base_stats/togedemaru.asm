	dw undefined ;national dex no
	
	db  65,  98,  63,  96,  40,  73
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togedemaru/front.dimensions"  
	db IRON BARBS, LIGHTNING ROD     ; abilities
	db STURDY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
