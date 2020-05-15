
	dw 00420 ;national dex no

	db  45,  35,  45,  35,  62,  53
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cherubi/front.dimensions"
	db CHLOROPHYLL, CHLOROPHYLL     ; abilities
	db CHLOROPHYLL    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_GRASS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
