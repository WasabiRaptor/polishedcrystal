
	dw 00012 ;national dex no

	db  60,  45,  50,  70,  90,  80
	evs  0,   0,   0,   0,   2,   1
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
	db COMPOUND_EYES, COMPOUND_EYES     ; abilities
	db TINTED_LENS    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
