	dw undefined ;national dex no
	
	db  70,  58,  58,  90,  87,  92
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/thievul/front.dimensions"  
	db RUN AWAY, UNBURDEN     ; abilities
	db STAKEOUT    ; hidden ability
	db Fast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
