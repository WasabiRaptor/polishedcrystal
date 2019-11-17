	dw undefined ;national dex no
	
	db  60,  55, 100,  30,  65, 100
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/corsola_1/front.dimensions"  
	db WEAK ARMOR, WEAK ARMOR     ; abilities
	db CURSED BODY    ; hidden ability
	db Fast ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
