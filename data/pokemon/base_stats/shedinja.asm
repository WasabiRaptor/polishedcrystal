	dw undefined ;national dex no
	
	db   1,  90,  45,  40,  30,  30
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shedinja/front.dimensions"  
	db WONDER GUARD, WONDER GUARD     ; abilities
	db WONDER GUARD    ; hidden ability
	db Erratic ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
