	dw undefined ;national dex no
	
	db  45,  50,  35,  40,  55,  75
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db DRAGON, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/goomy/front.dimensions"  
	db SAP SIPPER, HYDRATION     ; abilities
	db GOOEY    ; hidden ability
	db Slow ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
