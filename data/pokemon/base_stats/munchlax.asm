	dw undefined ;national dex no
	
	db 135,  85,  40,   5,  40,  85
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/munchlax/front.dimensions"  
	db PICKUP, THICK FAT     ; abilities
	db GLUTTONY    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
