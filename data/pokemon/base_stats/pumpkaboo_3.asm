	dw undefined ;national dex no
	
	db  59,  66,  70,  41,  44,  55
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pumpkaboo_3/front.dimensions"  
	db PICKUP, FRISK     ; abilities
	db INSOMNIA    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
