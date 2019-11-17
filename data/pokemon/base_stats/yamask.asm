	dw undefined ;national dex no
	
	db  38,  30,  85,  30,  55,  65
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/yamask/front.dimensions"  
	db MUMMY, MUMMY     ; abilities
	db MUMMY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
