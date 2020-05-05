
	dw 00867 ;national dex no

	db  58,  95, 145,  30,  50, 105
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/runerigus/front.dimensions"
	db WANDERING_SPIRIT, WANDERING_SPIRIT     ; abilities
	db WANDERING_SPIRIT    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
