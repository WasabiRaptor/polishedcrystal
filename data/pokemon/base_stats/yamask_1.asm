	dw undefined ;national dex no
	
	db  38,  55,  85,  30,  30,  65
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/yamask_1/front.dimensions"  
	db WANDERING SPIRIT, WANDERING SPIRIT     ; abilities
	db WANDERING SPIRIT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
