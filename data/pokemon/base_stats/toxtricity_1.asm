	dw undefined ;national dex no
	
	db  75,  98,  70,  75, 114,  70
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/toxtricity_1/front.dimensions"  
	db PUNK ROCK, MINUS     ; abilities
	db TECHNICIAN    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
