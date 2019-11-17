	dw undefined ;national dex no
	
	db  45,  55,  45,  75,  65,  45
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/delibird/front.dimensions"  
	db VITAL SPIRIT, HUSTLE     ; abilities
	db INSOMNIA    ; hidden ability
	db Fast ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
