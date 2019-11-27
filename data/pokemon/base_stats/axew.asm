	dw undefined ;national dex no
	
	db  46,  87,  60,  57,  30,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DRAGON, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/axew/front.dimensions"  
	db RIVALRY, MOLD BREAKER     ; abilities
	db UNNERVE    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
