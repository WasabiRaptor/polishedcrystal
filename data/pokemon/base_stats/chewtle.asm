	dw undefined ;national dex no
	
	db  50,  64,  50,  44,  38,  38
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/chewtle/front.dimensions"  
	db STRONG JAW, SHELL ARMOR     ; abilities
	db SWIFT SWIM    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
