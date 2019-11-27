	dw undefined ;national dex no
	
	db  67,  82,  62,  43,  46,  48
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pancham/front.dimensions"  
	db IRON FIST, MOLD BREAKER     ; abilities
	db SCRAPPY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
