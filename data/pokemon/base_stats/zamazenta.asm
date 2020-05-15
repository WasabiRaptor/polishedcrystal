
	dw 00889 ;national dex no

	db  92, 130, 115, 138,  80, 115
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zamazenta/front.dimensions"
	db DAUNTLESS_SHIELD, DAUNTLESS_SHIELD     ; abilities
	db DAUNTLESS_SHIELD    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
