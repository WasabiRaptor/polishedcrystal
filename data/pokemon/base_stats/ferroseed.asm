
	dw 00597 ;national dex no

	db  44,  50,  91,  10,  24,  86
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ferroseed/front.dimensions"
	db IRON_BARBS, IRON_BARBS     ; abilities
	db IRON_BARBS    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GRASS, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
