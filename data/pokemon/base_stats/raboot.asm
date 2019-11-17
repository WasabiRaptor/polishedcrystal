	dw undefined ;national dex no
	
	db  65,  86,  60,  94,  55,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIRE, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/raboot/front.dimensions"  
	db BLAZE, BLAZE     ; abilities
	db LIBERO    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
