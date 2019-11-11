	dw undefined ;national dex no
	
	db  60,  55,  90,  80, 145,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/chandelure/front.dimensions"  
	db FLASH FIRE, FLAME BODY     ; abilities
	db INFILTRATOR    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
