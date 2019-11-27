	dw undefined ;national dex no
	
	db  50,  65,  65, 100,  90,  90
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mr__mime_1/front.dimensions"  
	db VITAL SPIRIT, SCREEN CLEANER     ; abilities
	db ICE BODY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
