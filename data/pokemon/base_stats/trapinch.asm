	dw undefined ;national dex no
	
	db  45, 100,  45,  10,  45,  45
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/trapinch/front.dimensions"  
	db HYPER CUTTER, ARENA TRAP     ; abilities
	db SHEER FORCE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
