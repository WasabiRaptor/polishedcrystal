	dw undefined ;national dex no
	
	db  65,  75,  70,  95,  95,  70
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/xatu/front.dimensions"  
	db SYNCHRONIZE, EARLY BIRD     ; abilities
	db MAGIC BOUNCE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
