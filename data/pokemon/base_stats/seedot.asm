	dw undefined ;national dex no
	
	db  40,  40,  50,  30,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/seedot/front.dimensions"  
	db CHLOROPHYLL, EARLY BIRD     ; abilities
	db PICKPOCKET    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
