	dw undefined ;national dex no
	
	db  40,  30,  35,  55,  45,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FLYING, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/noibat/front.dimensions"  
	db FRISK, INFILTRATOR     ; abilities
	db TELEPATHY    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
