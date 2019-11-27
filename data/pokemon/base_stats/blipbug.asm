	dw undefined ;national dex no
	
	db  25,  20,  20,  45,  25,  45
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, BUG ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/blipbug/front.dimensions"  
	db SWARM, COMPOUND EYES     ; abilities
	db TELEPATHY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
