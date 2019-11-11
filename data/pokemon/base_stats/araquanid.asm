	dw undefined ;national dex no
	
	db  68,  70,  92,  42,  50, 132
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, BUG ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/araquanid/front.dimensions"  
	db WATER BUBBLE, WATER BUBBLE     ; abilities
	db WATER ABSORB    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
