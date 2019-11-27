	dw undefined ;national dex no
	
	db  80, 118,  90,  42,  70,  80
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/grapploct/front.dimensions"  
	db LIMBER, LIMBER     ; abilities
	db TECHNICIAN    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_WATER_1, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
