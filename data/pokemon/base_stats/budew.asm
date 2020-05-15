
	dw 00406 ;national dex no

	db  40,  30,  35,  55,  50,  70
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/budew/front.dimensions"
	db NATURAL_CURE, POISON_POINT     ; abilities
	db LEAF_GUARD    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
