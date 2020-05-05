
	dw 00811 ;national dex no

	db  70,  85,  70,  80,  55,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/thwackey/front.dimensions"
	db OVERGROW, OVERGROW     ; abilities
	db GRASSY_SURGE    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
