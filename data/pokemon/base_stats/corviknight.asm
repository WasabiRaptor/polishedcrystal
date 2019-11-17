	dw undefined ;national dex no
	
	db  98,  87, 105,  67,  53,  85
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FLYING, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/corviknight/front.dimensions"  
	db PRESSURE, UNNERVE     ; abilities
	db MIRROR ARMOR    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
