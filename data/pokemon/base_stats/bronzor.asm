	dw undefined ;national dex no
	
	db  57,  24,  86,  23,  24,  86
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db STEEL, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/bronzor/front.dimensions"  
	db LEVITATE, HEATPROOF     ; abilities
	db HEAVY METAL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
