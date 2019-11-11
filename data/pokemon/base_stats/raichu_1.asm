	dw undefined ;national dex no
	
	db  60,  85,  50, 110,  95,  85
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/raichu_1/front.dimensions"  
	db SURGE SURFER, SURGE SURFER     ; abilities
	db SURGE SURFER    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
