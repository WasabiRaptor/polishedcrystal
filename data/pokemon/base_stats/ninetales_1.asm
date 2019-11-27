	dw undefined ;national dex no
	
	db  73,  67,  75, 109,  81, 100
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ICE, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ninetales_1/front.dimensions"  
	db SNOW CLOAK, SNOW CLOAK     ; abilities
	db SNOW WARNING    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
