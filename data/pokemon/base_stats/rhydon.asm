	dw undefined ;national dex no
	
	db 105, 130, 120,  40,  45,  45
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rhydon/front.dimensions"  
	db LIGHTNING ROD, ROCK HEAD     ; abilities
	db RECKLESS    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
