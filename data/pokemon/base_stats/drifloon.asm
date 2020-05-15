
	dw 00425 ;national dex no

	db  90,  50,  34,  70,  60,  44
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drifloon/front.dimensions"
	db AFTERMATH, UNBURDEN     ; abilities
	db FLARE_BOOST    ; hidden ability
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
