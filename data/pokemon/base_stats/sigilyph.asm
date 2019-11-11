	dw undefined ;national dex no
	
	db  72,  58,  80,  97, 103,  80
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sigilyph/front.dimensions"  
	db WONDER SKIN, MAGIC GUARD     ; abilities
	db TINTED LENS    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
