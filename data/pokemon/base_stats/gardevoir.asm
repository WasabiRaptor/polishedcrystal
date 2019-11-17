	dw undefined ;national dex no
	
	db  68,  65,  65,  80, 125, 115
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gardevoir/front.dimensions"  
	db SYNCHRONIZE, TRACE     ; abilities
	db TELEPATHY    ; hidden ability
	db Slow ; growth rate
	dn EGG_HUMAN_LIKE, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
