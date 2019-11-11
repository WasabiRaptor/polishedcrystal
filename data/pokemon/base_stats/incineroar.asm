	dw undefined ;national dex no
	
	db  95, 115,  90,  60,  80,  90
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIRE, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/incineroar/front.dimensions"  
	db BLAZE, BLAZE     ; abilities
	db INTIMIDATE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
