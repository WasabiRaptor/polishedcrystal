	dw undefined ;national dex no
	
	db  75,  80,  85,  50, 110,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vileplume/front.dimensions"  
	db CHLOROPHYLL, CHLOROPHYLL     ; abilities
	db EFFECT SPORE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
