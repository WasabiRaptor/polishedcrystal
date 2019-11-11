	dw undefined ;national dex no
	
	db  80,  60,  90,  50,  60,  70
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/carkol/front.dimensions"  
	db STEAM ENGINE, FLAME BODY     ; abilities
	db FLASH FIRE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
