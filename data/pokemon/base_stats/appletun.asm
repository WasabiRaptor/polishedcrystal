	dw undefined ;national dex no
	
	db 110,  85,  80,  30, 100,  80
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/appletun/front.dimensions"  
	db RIPEN, GLUTTONY     ; abilities
	db THICK FAT    ; hidden ability
	db Erratic ; growth rate
	dn EGG_GRASS, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
