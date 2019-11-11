	dw undefined ;national dex no
	
	db  68,  80,  50, 102,  60,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DRAGON, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drakloak/front.dimensions"  
	db CLEAR BODY, INFILTRATOR     ; abilities
	db CURSED BODY    ; hidden ability
	db Slow ; growth rate
	dn EGG_AMORPHOUS, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
