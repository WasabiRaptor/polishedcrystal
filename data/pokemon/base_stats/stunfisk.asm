	dw undefined ;national dex no
	
	db 109,  66,  84,  32,  81,  99
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/stunfisk/front.dimensions"  
	db STATIC, LIMBER     ; abilities
	db SAND VEIL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
