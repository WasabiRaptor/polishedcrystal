	dw undefined ;national dex no
	
	db  97, 107, 101,  79, 127,  89
	evs  0,   1,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/necrozma/front.dimensions"  
	db PRISM ARMOR, PRISM ARMOR     ; abilities
	db PRISM ARMOR    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
