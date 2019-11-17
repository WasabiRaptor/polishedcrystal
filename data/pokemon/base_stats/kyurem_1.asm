	dw undefined ;national dex no
	
	db 125, 120,  90,  95, 170, 100
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DRAGON, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/kyurem_1/front.dimensions"  
	db TURBOBLAZE, TURBOBLAZE     ; abilities
	db TURBOBLAZE    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
