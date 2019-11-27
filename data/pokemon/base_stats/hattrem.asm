	dw undefined ;national dex no
	
	db  57,  40,  65,  49,  86,  73
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hattrem/front.dimensions"  
	db HEALER, ANTICIPATION     ; abilities
	db MAGIC BOUNCE    ; hidden ability
	db Slow ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
