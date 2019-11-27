	dw undefined ;national dex no
	
	db  80,  85,  95,  25,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"  
	db LIGHTNING ROD, ROCK HEAD     ; abilities
	db RECKLESS    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
