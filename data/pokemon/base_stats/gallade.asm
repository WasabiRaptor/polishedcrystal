	dw undefined ;national dex no
	
	db  68, 125,  65,  80,  65, 115
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gallade/front.dimensions"  
	db STEADFAST, STEADFAST     ; abilities
	db JUSTIFIED    ; hidden ability
	db Slow ; growth rate
	dn EGG_HUMAN_LIKE, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
