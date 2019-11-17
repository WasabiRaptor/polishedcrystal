	dw undefined ;national dex no
	
	db  60,  67,  85, 116,  77,  75
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/whimsicott/front.dimensions"  
	db PRANKSTER, INFILTRATOR     ; abilities
	db CHLOROPHYLL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_GRASS, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
