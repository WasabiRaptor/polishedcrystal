	dw undefined ;national dex no
	
	db  70,  77,  60, 108,  97,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/galvantula/front.dimensions"  
	db COMPOUND EYES, UNNERVE     ; abilities
	db SWARM    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
