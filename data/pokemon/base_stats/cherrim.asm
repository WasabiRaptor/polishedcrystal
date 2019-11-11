	dw undefined ;national dex no
	
	db  70,  60,  70,  85,  87,  78
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cherrim/front.dimensions"  
	db FLOWER GIFT, FLOWER GIFT     ; abilities
	db FLOWER GIFT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FAIRY, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
