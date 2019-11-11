	dw undefined ;national dex no
	
	db  90, 100,  60,  80,  90,  60
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shiftry/front.dimensions"  
	db CHLOROPHYLL, EARLY BIRD     ; abilities
	db PICKPOCKET    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
