	dw undefined ;national dex no
	
	db  70,  80,  70, 110,  80,  70
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/froslass/front.dimensions"  
	db SNOW CLOAK, SNOW CLOAK     ; abilities
	db CURSED BODY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
