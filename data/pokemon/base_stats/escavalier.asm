	dw undefined ;national dex no
	
	db  70, 135, 105,  20,  60, 105
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/escavalier/front.dimensions"  
	db SWARM, SHELL ARMOR     ; abilities
	db OVERCOAT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
