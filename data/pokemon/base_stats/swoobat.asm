
	dw 00528 ;national dex no

	db  67,  57,  55, 114,  77,  55
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/swoobat/front.dimensions"
	db UNAWARE, KLUTZ     ; abilities
	db SIMPLE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm
	; end
