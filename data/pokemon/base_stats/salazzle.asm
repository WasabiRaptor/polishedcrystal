	dw undefined ;national dex no
	
	db  68,  64,  60, 117, 111,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db POISON, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/salazzle/front.dimensions"  
	db CORROSION, CORROSION     ; abilities
	db OBLIVIOUS    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
