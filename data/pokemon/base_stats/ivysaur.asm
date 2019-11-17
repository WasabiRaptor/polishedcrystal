	dw undefined ;national dex no
	
	db  60,  62,  63,  60,  80,  80
	evs  0,   0,   0,   0,   1,   1
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ivysaur/front.dimensions"  
	db OVERGROW, OVERGROW     ; abilities
	db CHLOROPHYLL    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MONSTER, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
