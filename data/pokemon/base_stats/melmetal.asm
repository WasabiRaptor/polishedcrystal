
	dw 00809 ;national dex no

	db 135, 143, 143,  34,  80,  65
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/melmetal/front.dimensions"
	db IRON_FIST, IRON_FIST     ; abilities
	db IRON_FIST    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
