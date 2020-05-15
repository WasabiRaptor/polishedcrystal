
	dw 00704 ;national dex no

	db  45,  50,  35,  40,  55,  75
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/goomy/front.dimensions"
	db SAP_SIPPER, HYDRATION     ; abilities
	db GOOEY    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
