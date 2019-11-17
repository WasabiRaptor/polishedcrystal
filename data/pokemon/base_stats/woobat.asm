	dw undefined ;national dex no
	
	db  65,  45,  43,  72,  55,  43
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/woobat/front.dimensions"  
	db UNAWARE, KLUTZ     ; abilities
	db SIMPLE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
