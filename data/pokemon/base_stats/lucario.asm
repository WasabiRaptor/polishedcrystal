	dw undefined ;national dex no
	
	db  70, 110,  70,  90, 115,  70
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lucario/front.dimensions"  
	db STEADFAST, INNER FOCUS     ; abilities
	db JUSTIFIED    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
