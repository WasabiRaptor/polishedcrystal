	dw undefined ;national dex no
	
	db  70,  55,  55,  25,  35,  35
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/skwovet/front.dimensions"  
	db CHEEK POUCH, CHEEK POUCH     ; abilities
	db GLUTTONY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
