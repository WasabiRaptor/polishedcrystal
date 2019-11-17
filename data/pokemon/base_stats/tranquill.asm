	dw undefined ;national dex no
	
	db  62,  77,  62,  65,  50,  42
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/tranquill/front.dimensions"  
	db BIG PECKS, SUPER LUCK     ; abilities
	db RIVALRY    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
