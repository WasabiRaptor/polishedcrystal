	dw undefined ;national dex no
	
	db  50,  75,  45,  60,  40,  45
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, BUG ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/karrablast/front.dimensions"  
	db SWARM, SHED SKIN     ; abilities
	db NO GUARD    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
