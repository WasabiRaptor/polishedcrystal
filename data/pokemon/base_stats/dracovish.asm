
	dw 00882 ;national dex no

	db  90,  90, 100,  75,  70,  80
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 7 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dracovish/front.dimensions"
	db WATER_ABSORB, STRONG_JAW     ; abilities
	db SAND_RUSH    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
