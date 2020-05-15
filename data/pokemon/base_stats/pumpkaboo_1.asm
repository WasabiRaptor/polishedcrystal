
	dw 01099 ;national dex no

	db  44,  66,  70,  56,  44,  55
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pumpkaboo_1/front.dimensions"
	db PICKUP, FRISK     ; abilities
	db INSOMNIA    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
