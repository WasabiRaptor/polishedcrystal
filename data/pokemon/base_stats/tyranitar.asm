	dw undefined ;national dex no
	
	db 100, 134, 110,  61,  95, 100
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/tyranitar/front.dimensions"  
	db SAND STREAM, SAND STREAM     ; abilities
	db UNNERVE    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
