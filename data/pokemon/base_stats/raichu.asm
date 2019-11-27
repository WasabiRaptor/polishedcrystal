	dw undefined ;national dex no
	
	db  60,  90,  55, 110,  90,  80
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ELECTRIC, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/raichu/front.dimensions"  
	db STATIC, STATIC     ; abilities
	db LIGHTNING ROD    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
