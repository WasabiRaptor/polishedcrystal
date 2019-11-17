	dw undefined ;national dex no
	
	db  78,  60,  85,  36, 135,  91
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drampa/front.dimensions"  
	db BERSERK, SAP SIPPER     ; abilities
	db CLOUD NINE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
