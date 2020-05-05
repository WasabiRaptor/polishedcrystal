
	dw 01130 ;national dex no

	db  95,  95,  95,  95,  95,  95
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 24 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/silvally_13/front.dimensions"
	db RKS_SYSTEM, RKS_SYSTEM     ; abilities
	db RKS_SYSTEM    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
