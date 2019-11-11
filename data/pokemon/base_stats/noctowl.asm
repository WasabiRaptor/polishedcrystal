	dw undefined ;national dex no
	
	db 100,  50,  50,  70,  86,  96
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/noctowl/front.dimensions"  
	db INSOMNIA, KEEN EYE     ; abilities
	db TINTED LENS    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
