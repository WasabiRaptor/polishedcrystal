	dw undefined ;national dex no
	
	db  70,  75,  50,  50,  45,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/stufful/front.dimensions"  
	db FLUFFY, KLUTZ     ; abilities
	db CUTE CHARM    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
