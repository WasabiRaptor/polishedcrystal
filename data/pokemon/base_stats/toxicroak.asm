	dw undefined ;national dex no
	
	db  83, 106,  65,  85,  86,  65
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/toxicroak/front.dimensions"  
	db ANTICIPATION, DRY SKIN     ; abilities
	db POISON TOUCH    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
