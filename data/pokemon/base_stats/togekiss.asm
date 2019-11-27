	dw undefined ;national dex no
	
	db  85,  50,  95,  80, 120, 115
	evs  0,   0,   0,   0,   2,   1
	;   hp  atk  def  spd  sat  sdf
	
	db FAIRY, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togekiss/front.dimensions"  
	db HUSTLE, SERENE GRACE     ; abilities
	db SUPER LUCK    ; hidden ability
	db Fast ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
