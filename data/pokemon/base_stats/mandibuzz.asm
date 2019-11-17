	dw undefined ;national dex no
	
	db 110,  65, 105,  80,  55,  95
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mandibuzz/front.dimensions"  
	db BIG PECKS, OVERCOAT     ; abilities
	db WEAK ARMOR    ; hidden ability
	db Slow ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
