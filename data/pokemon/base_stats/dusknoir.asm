
	dw 00477 ;national dex no

	db  45, 100, 135,  45,  65, 135
	evs  0,   0,   1,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dusknoir/front.dimensions"
	db PRESSURE, PRESSURE     ; abilities
	db FRISK    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
