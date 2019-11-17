	dw undefined ;national dex no
	
	db  50,  64,  50,  41,  45,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/larvitar/front.dimensions"  
	db GUTS, GUTS     ; abilities
	db SAND VEIL    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
