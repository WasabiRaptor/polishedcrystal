	dw undefined ;national dex no
	
	db  40,  40,  60,  10,  40,  60
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gossifleur/front.dimensions"  
	db COTTON DOWN, REGENERATOR     ; abilities
	db EFFECT SPORE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
