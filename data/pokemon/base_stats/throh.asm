	dw undefined ;national dex no
	
	db 120, 100,  85,  45,  30,  85
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/throh/front.dimensions"  
	db GUTS, INNER FOCUS     ; abilities
	db MOLD BREAKER    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
