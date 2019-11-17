	dw undefined ;national dex no
	
	db  38,  47,  35,  57,  33,  35
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FLYING, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rookidee/front.dimensions"  
	db KEEN EYE, UNNERVE     ; abilities
	db BIG PECKS    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
