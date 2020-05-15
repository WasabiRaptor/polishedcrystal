
	dw 00350 ;national dex no

	db  95,  60,  79,  81, 100, 125
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/milotic/front.dimensions"
	db MARVEL_SCALE, COMPETITIVE     ; abilities
	db CUTE_CHARM    ; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
