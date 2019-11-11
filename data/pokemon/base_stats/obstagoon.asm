	dw undefined ;national dex no
	
	db  93,  90, 101,  95,  60,  81
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/obstagoon/front.dimensions"  
	db RECKLESS, GUTS     ; abilities
	db DEFIANT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
