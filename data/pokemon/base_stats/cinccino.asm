	dw undefined ;national dex no
	
	db  75,  95,  60, 115,  65,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cinccino/front.dimensions"  
	db CUTE CHARM, TECHNICIAN     ; abilities
	db SKILL LINK    ; hidden ability
	db Fast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
