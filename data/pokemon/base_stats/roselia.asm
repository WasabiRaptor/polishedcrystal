	dw undefined ;national dex no
	
	db  50,  60,  45,  65, 100,  80
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/roselia/front.dimensions"  
	db NATURAL CURE, POISON POINT     ; abilities
	db LEAF GUARD    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FAIRY, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
