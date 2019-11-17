	dw undefined ;national dex no
	
	db  70,  84,  70,  51,  65,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pupitar/front.dimensions"  
	db SHED SKIN, SHED SKIN     ; abilities
	db SHED SKIN    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
