	dw undefined ;national dex no
	
	db 100, 125, 135,  70,  20,  20
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/stonjourner/front.dimensions"  
	db POWER SPOT, POWER SPOT     ; abilities
	db POWER SPOT    ; hidden ability
	db Slow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
