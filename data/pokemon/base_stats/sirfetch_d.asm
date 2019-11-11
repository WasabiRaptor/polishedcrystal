	dw undefined ;national dex no
	
	db  62, 135,  95,  65,  68,  82
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sirfetch_d/front.dimensions"  
	db STEADFAST, STEADFAST     ; abilities
	db SCRAPPY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FLYING, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
