
	dw 01169 ;national dex no

	db  92, 130, 145, 128,  80, 145
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 24 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zamazenta_1/front.dimensions"
	db DAUNTLESS_SHIELD, DAUNTLESS_SHIELD     ; abilities
	db DAUNTLESS_SHIELD    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
