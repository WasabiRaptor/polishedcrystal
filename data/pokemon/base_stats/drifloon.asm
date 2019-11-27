	dw undefined ;national dex no
	
	db  90,  50,  34,  70,  60,  44
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GHOST, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drifloon/front.dimensions"  
	db AFTERMATH, UNBURDEN     ; abilities
	db FLARE BOOST    ; hidden ability
	db Fluctuating ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
