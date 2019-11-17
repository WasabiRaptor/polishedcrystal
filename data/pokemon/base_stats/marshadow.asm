	dw undefined ;national dex no
	
	db  90, 125,  80, 125,  90,  90
	evs  0,   2,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/marshadow/front.dimensions"  
	db TECHNICIAN, TECHNICIAN     ; abilities
	db TECHNICIAN    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
