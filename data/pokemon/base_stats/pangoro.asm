	dw undefined ;national dex no
	
	db  95, 124,  78,  58,  69,  71
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pangoro/front.dimensions"  
	db IRON FIST, MOLD BREAKER     ; abilities
	db SCRAPPY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
