	dw undefined ;national dex no
	
	db  55,  40,  85,  40,  80, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db FAIRY, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togetic/front.dimensions"  
	db HUSTLE, SERENE GRACE     ; abilities
	db SUPER LUCK    ; hidden ability
	db Fast ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
