	dw undefined ;national dex no
	
	db  55,  90,  80,  96,  50, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mimikyu/front.dimensions"  
	db DISGUISE, DISGUISE     ; abilities
	db DISGUISE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
