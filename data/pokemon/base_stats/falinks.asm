	dw undefined ;national dex no
	
	db  65, 100, 100,  75,  70,  60
	evs  0,   2,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/falinks/front.dimensions"  
	db BATTLE ARMOR, BATTLE ARMOR     ; abilities
	db DEFIANT    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
