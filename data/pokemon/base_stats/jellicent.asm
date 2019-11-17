	dw undefined ;national dex no
	
	db 100,  60,  70,  60,  85, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/jellicent/front.dimensions"  
	db WATER ABSORB, CURSED BODY     ; abilities
	db DAMP    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
