	dw undefined ;national dex no
	
	db  97, 113, 109,  77, 157, 127
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/necrozma_2/front.dimensions"  
	db PRISM ARMOR, PRISM ARMOR     ; abilities
	db PRISM ARMOR    ; hidden ability
	db Slow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
