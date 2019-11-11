	dw undefined ;national dex no
	
	db  40,  27,  60,  66,  37,  50
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cottonee/front.dimensions"  
	db PRANKSTER, INFILTRATOR     ; abilities
	db CHLOROPHYLL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_GRASS, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
