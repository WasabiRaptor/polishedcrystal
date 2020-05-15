
	dw 00578 ;national dex no

	db  65,  40,  50,  30, 125,  60
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/duosion/front.dimensions"
	db OVERCOAT, MAGIC_GUARD     ; abilities
	db REGENERATOR    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
