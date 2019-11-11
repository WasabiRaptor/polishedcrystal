	dw undefined ;national dex no
	
	db  50,  65, 107,  86, 105, 107
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rotom_1/front.dimensions"  
	db LEVITATE, LEVITATE     ; abilities
	db LEVITATE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
