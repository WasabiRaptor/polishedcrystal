	dw undefined ;national dex no
	
	db 108, 112, 118,  47,  68,  72
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hippowdon/front.dimensions"  
	db SAND STREAM, SAND STREAM     ; abilities
	db SAND FORCE    ; hidden ability
	db Slow ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
