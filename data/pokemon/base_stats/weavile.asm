	dw undefined ;national dex no
	
	db  70, 120,  65, 125,  45,  85
	evs  0,   1,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/weavile/front.dimensions"  
	db PRESSURE, PRESSURE     ; abilities
	db PICKPOCKET    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
