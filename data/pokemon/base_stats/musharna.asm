	dw undefined ;national dex no
	
	db 116,  55,  85,  29, 107,  95
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/musharna/front.dimensions"  
	db FOREWARN, SYNCHRONIZE     ; abilities
	db TELEPATHY    ; hidden ability
	db Fast ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
