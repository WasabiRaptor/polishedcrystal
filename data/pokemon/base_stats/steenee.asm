	dw undefined ;national dex no
	
	db  52,  40,  48,  62,  40,  48
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/steenee/front.dimensions"  
	db LEAF GUARD, OBLIVIOUS     ; abilities
	db SWEET VEIL    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
