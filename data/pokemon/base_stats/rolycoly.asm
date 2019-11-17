	dw undefined ;national dex no
	
	db  30,  40,  50,  30,  40,  50
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rolycoly/front.dimensions"  
	db STEAM ENGINE, HEATPROOF     ; abilities
	db FLASH FIRE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
