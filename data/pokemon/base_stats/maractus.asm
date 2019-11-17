	dw undefined ;national dex no
	
	db  75,  86,  67,  60, 106,  67
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/maractus/front.dimensions"  
	db WATER ABSORB, CHLOROPHYLL     ; abilities
	db STORM DRAIN    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
