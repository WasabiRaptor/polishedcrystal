
	dw 00596 ;national dex no

	db  70,  77,  60, 108,  97,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/galvantula/front.dimensions"
	db COMPOUND_EYES, UNNERVE     ; abilities
	db SWARM    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
