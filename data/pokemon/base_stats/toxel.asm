
	dw 00848 ;national dex no

	db  40,  38,  35,  40,  54,  35
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/toxel/front.dimensions"
	db RATTLED, STATIC     ; abilities
	db KLUTZ    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
