	dw undefined ;national dex no
	
	db  48,  61,  40,  50,  61,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/croagunk/front.dimensions"  
	db ANTICIPATION, DRY SKIN     ; abilities
	db POISON TOUCH    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
