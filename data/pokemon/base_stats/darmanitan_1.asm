	dw undefined ;national dex no
	
	db 105,  30, 105,  55, 140, 105
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIRE, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/darmanitan_1/front.dimensions"  
	db SHEER FORCE, SHEER FORCE     ; abilities
	db ZEN MODE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
