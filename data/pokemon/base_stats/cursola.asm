
	dw 00864 ;national dex no

	db  60,  95,  50,  30, 145, 130
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cursola/front.dimensions"
	db WEAK_ARMOR, WEAK_ARMOR     ; abilities
	db PERISH_BODY    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm
	; end
