	dw undefined ;national dex no
	
	db  50,  70,  50,  70,  50,  50
	evs  0,   1,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vibrava/front.dimensions"  
	db LEVITATE, LEVITATE     ; abilities
	db LEVITATE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
