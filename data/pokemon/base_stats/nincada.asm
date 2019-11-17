	dw undefined ;national dex no
	
	db  31,  45,  90,  40,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/nincada/front.dimensions"  
	db COMPOUND EYES, COMPOUND EYES     ; abilities
	db RUN AWAY    ; hidden ability
	db Erratic ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
