
	dw 00879 ;national dex no

	db 122, 130,  69,  30,  80,  69
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/copperajah/front.dimensions"
	db SHEER_FORCE, SHEER_FORCE     ; abilities
	db HEAVY_METAL    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
