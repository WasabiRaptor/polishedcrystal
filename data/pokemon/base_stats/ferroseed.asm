	dw undefined ;national dex no
	
	db  44,  50,  91,  10,  24,  86
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ferroseed/front.dimensions"  
	db IRON BARBS, IRON BARBS     ; abilities
	db IRON BARBS    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_GRASS, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
