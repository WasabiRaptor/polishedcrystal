
	dw 01149 ;national dex no

	db  97, 157, 127,  77, 113, 109
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/necrozma_1/front.dimensions"
	db PRISM_ARMOR, PRISM_ARMOR     ; abilities
	db PRISM_ARMOR    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
