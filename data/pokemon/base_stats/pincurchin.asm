
	dw 00871 ;national dex no

	db  48, 101,  95,  15,  91,  85
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pincurchin/front.dimensions"
	db LIGHTNING_ROD, LIGHTNING_ROD     ; abilities
	db ELECTRIC_SURGE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
