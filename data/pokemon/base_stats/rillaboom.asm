
	dw 00812 ;national dex no

	db 100, 125,  90,  85,  60,  70
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rillaboom/front.dimensions"
	db OVERGROW, OVERGROW     ; abilities
	db GRASSY_SURGE    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_GRASS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
