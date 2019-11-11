	dw undefined ;national dex no
	
	db  60,  62,  50,  40,  62,  60
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db GRASS, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/snover/front.dimensions"  
	db SNOW WARNING, SNOW WARNING     ; abilities
	db SOUNDPROOF    ; hidden ability
	db Slow ; growth rate
	dn EGG_MONSTER, EGG_GRASS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
