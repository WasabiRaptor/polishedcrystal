	dw undefined ;national dex no
	
	db  40,  30,  35,  55,  50,  70
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/budew/front.dimensions"  
	db NATURAL CURE, POISON POINT     ; abilities
	db LEAF GUARD    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
