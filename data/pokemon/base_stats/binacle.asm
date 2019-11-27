	dw undefined ;national dex no
	
	db  42,  52,  67,  50,  39,  56
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/binacle/front.dimensions"  
	db TOUGH CLAWS, SNIPER     ; abilities
	db PICKPOCKET    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
