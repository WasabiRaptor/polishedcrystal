	dw undefined ;national dex no
	
	db  45,  67,  60,  63,  35,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/goldeen/front.dimensions"  
	db SWIFT SWIM, WATER VEIL     ; abilities
	db LIGHTNING ROD    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
