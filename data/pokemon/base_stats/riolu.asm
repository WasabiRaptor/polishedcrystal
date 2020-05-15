
	dw 00447 ;national dex no

	db  40,  70,  40,  60,  35,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/riolu/front.dimensions"
	db STEADFAST, INNER_FOCUS     ; abilities
	db PRANKSTER    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
