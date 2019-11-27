	dw undefined ;national dex no
	
	db  70,  45,  48,  35,  60,  65
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/clefairy/front.dimensions"  
	db CUTE CHARM, MAGIC GUARD     ; abilities
	db FRIEND GUARD    ; hidden ability
	db Fast ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
