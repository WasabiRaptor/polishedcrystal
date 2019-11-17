	dw undefined ;national dex no
	
	db 150,  80,  44,  80,  90,  54
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drifblim/front.dimensions"  
	db AFTERMATH, UNBURDEN     ; abilities
	db FLARE BOOST    ; hidden ability
	db Fluctuating ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
