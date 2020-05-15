
	dw 00635 ;national dex no

	db  92, 105,  90,  98, 125,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hydreigon/front.dimensions"
	db LEVITATE, LEVITATE     ; abilities
	db LEVITATE    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
