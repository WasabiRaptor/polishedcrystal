	dw undefined ;national dex no
	
	db  44,  38,  33,  70,  61,  43
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/helioptile/front.dimensions"  
	db DRY SKIN, SAND VEIL     ; abilities
	db SOLAR POWER    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
