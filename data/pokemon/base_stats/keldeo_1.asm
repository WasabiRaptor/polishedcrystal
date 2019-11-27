	dw undefined ;national dex no
	
	db  91,  72,  90, 108, 129,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/keldeo_1/front.dimensions"  
	db JUSTIFIED, JUSTIFIED     ; abilities
	db JUSTIFIED    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
