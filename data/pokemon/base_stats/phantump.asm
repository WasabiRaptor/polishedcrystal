	dw undefined ;national dex no
	
	db  43,  70,  48,  38,  50,  60
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/phantump/front.dimensions"  
	db NATURAL CURE, FRISK     ; abilities
	db HARVEST    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_GRASS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
