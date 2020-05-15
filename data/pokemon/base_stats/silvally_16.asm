
	dw 01133 ;national dex no

	db  95,  95,  95,  95,  95,  95
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/silvally_16/front.dimensions"
	db RKS_SYSTEM, RKS_SYSTEM     ; abilities
	db RKS_SYSTEM    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
