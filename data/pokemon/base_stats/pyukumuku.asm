	dw undefined ;national dex no
	
	db  55,  60, 130,   5,  30, 130
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pyukumuku/front.dimensions"  
	db INNARDS OUT, INNARDS OUT     ; abilities
	db UNAWARE    ; hidden ability
	db Fast ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
