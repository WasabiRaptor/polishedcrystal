	dw undefined ;national dex no
	
	db  30, 105,  90,  50,  25,  25
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/krabby/front.dimensions"  
	db HYPER CUTTER, SHELL ARMOR     ; abilities
	db SHEER FORCE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
