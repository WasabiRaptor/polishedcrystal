	dw undefined ;national dex no
	
	db  58,  95,  58,  97,  70,  58
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/morpeko/front.dimensions"  
	db HUNGER SWITCH, HUNGER SWITCH     ; abilities
	db HUNGER SWITCH    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
