
	dw 00825 ;national dex no

	db  50,  35,  80,  30,  50,  90
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db BUG, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dottler/front.dimensions"
	db SWARM, COMPOUND_EYES     ; abilities
	db TELEPATHY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
