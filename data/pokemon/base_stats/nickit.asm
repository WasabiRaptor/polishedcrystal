
	dw 00827 ;national dex no

	db  40,  28,  28,  50,  47,  52
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/nickit/front.dimensions"
	db RUN_AWAY, UNBURDEN     ; abilities
	db STAKEOUT    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
