	dw undefined ;national dex no
	
	db 160, 110,  65,  30,  65, 110
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/snorlax/front.dimensions"  
	db IMMUNITY, THICK FAT     ; abilities
	db GLUTTONY    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
