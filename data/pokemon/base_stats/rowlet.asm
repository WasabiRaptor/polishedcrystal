	dw undefined ;national dex no
	
	db  68,  55,  55,  42,  50,  50
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rowlet/front.dimensions"  
	db OVERGROW, OVERGROW     ; abilities
	db LONG REACH    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
