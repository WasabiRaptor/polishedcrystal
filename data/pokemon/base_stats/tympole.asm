	dw undefined ;national dex no
	
	db  50,  50,  40,  64,  50,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/tympole/front.dimensions"  
	db SWIFT SWIM, HYDRATION     ; abilities
	db WATER ABSORB    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
