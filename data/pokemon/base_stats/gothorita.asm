	dw undefined ;national dex no
	
	db  60,  45,  70,  55,  75,  85
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gothorita/front.dimensions"  
	db FRISK, COMPETITIVE     ; abilities
	db SHADOW TAG    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
