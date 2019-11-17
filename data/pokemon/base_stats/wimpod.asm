	dw undefined ;national dex no
	
	db  25,  35,  40,  80,  20,  30
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/wimpod/front.dimensions"  
	db WIMP OUT, WIMP OUT     ; abilities
	db WIMP OUT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_WATER_3 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
