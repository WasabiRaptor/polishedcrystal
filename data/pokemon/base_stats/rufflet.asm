	dw undefined ;national dex no
	
	db  70,  83,  50,  60,  37,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rufflet/front.dimensions"  
	db KEEN EYE, SHEER FORCE     ; abilities
	db HUSTLE    ; hidden ability
	db Slow ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
