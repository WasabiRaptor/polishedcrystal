	dw undefined ;national dex no
	
	db  60,  40,  60,  55,  95,  60
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lampent/front.dimensions"  
	db FLASH FIRE, FLAME BODY     ; abilities
	db INFILTRATOR    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
