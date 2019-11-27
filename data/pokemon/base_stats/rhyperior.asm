	dw undefined ;national dex no
	
	db 115, 140, 130,  40,  55,  55
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rhyperior/front.dimensions"  
	db LIGHTNING ROD, SOLID ROCK     ; abilities
	db RECKLESS    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
