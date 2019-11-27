	dw undefined ;national dex no
	
	db  52,  90,  55,  60,  58,  62
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/farfetch_d/front.dimensions"  
	db KEEN EYE, INNER FOCUS     ; abilities
	db DEFIANT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FLYING, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
