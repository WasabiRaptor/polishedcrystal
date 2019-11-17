	dw undefined ;national dex no
	
	db  60,  50,  50,  50,  60,  70
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lombre/front.dimensions"  
	db SWIFT SWIM, RAIN DISH     ; abilities
	db OWN TEMPO    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_WATER_1, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
