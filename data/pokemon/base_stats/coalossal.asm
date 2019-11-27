	dw undefined ;national dex no
	
	db 110,  80, 120,  30,  80,  90
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/coalossal/front.dimensions"  
	db STEAM ENGINE, FLAME BODY     ; abilities
	db FLASH FIRE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
