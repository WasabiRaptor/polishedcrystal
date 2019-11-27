	dw undefined ;national dex no
	
	db  90, 100,  90,  75,  80,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dracozolt/front.dimensions"  
	db VOLT ABSORB, HUSTLE     ; abilities
	db SAND RUSH    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
