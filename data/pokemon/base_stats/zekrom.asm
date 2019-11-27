	dw undefined ;national dex no
	
	db 100, 150, 120,  90, 120, 100
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DRAGON, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zekrom/front.dimensions"  
	db TERAVOLT, TERAVOLT     ; abilities
	db TERAVOLT    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
