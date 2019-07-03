	dw 00773
	db  95,  95,  95,  95,  95,  95
    evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/silvally/front.dimensions"
	db RKS_SYSTEM, RKS_SYSTEM	; abilities
	db RKS_SYSTEM	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
