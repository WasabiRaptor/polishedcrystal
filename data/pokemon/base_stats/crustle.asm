	dw undefined ;national dex no
	
	db  70, 105, 125,  45,  65,  75
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/crustle/front.dimensions"  
	db STURDY, SHELL ARMOR     ; abilities
	db WEAK ARMOR    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
