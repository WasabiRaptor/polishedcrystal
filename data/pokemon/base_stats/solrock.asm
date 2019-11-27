	dw undefined ;national dex no
	
	db  90,  95,  85,  70,  55,  65
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/solrock/front.dimensions"  
	db LEVITATE, LEVITATE     ; abilities
	db LEVITATE    ; hidden ability
	db Fast ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
