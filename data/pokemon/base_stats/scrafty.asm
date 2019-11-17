	dw undefined ;national dex no
	
	db  65,  90, 115,  58,  45, 115
	evs  0,   0,   1,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db DARK, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/scrafty/front.dimensions"  
	db SHED SKIN, MOXIE     ; abilities
	db INTIMIDATE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FIELD, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
