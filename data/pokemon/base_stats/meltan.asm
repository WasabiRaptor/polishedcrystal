
	dw 00808 ;national dex no

	db  46,  65,  65,  34,  55,  35
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/meltan/front.dimensions"
	db MAGNET_PULL, MAGNET_PULL     ; abilities
	db MAGNET_PULL    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
