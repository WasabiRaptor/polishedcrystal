	dw undefined ;national dex no
	
	db  40,  40,  80,  20,  40,  40
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/applin/front.dimensions"  
	db RIPEN, GLUTTONY     ; abilities
	db BULLETPROOF    ; hidden ability
	db Erratic ; growth rate
	dn EGG_GRASS, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
