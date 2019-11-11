	dw undefined ;national dex no
	
	db  50,  75,  75,  50,  65,  65
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sableye/front.dimensions"  
	db KEEN EYE, STALL     ; abilities
	db PRANKSTER    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
