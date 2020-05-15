
	dw 00684 ;national dex no

	db  62,  48,  66,  49,  59,  57
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/swirlix/front.dimensions"
	db SWEET_VEIL, SWEET_VEIL     ; abilities
	db UNBURDEN    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
