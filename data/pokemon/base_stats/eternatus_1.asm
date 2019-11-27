	dw undefined ;national dex no
	
	db 255, 115, 250, 130, 125, 250
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/eternatus_1/front.dimensions"  
	db PRESSURE, PRESSURE     ; abilities
	db PRESSURE    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
