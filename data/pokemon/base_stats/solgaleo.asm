	dw undefined ;national dex no
	
	db 137, 137, 107,  97, 113,  89
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/solgaleo/front.dimensions"  
	db FULL METAL BODY, FULL METAL BODY     ; abilities
	db FULL METAL BODY    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
