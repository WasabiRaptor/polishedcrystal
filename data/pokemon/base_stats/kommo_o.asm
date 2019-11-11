	dw undefined ;national dex no
	
	db  75, 110, 125,  85, 100, 105
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db DRAGON, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/kommo_o/front.dimensions"  
	db BULLETPROOF, SOUNDPROOF     ; abilities
	db OVERCOAT    ; hidden ability
	db Slow ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
