
	dw 00036 ;national dex no

	db  95,  70,  73,  60,  95,  90
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/clefable/front.dimensions"
	db CUTE_CHARM, MAGIC_GUARD     ; abilities
	db UNAWARE    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
