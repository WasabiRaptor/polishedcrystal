	dw undefined ;national dex no
	
	db  45,  30,  40,  20, 105,  50
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/solosis/front.dimensions"  
	db OVERCOAT, MAGIC GUARD     ; abilities
	db REGENERATOR    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
