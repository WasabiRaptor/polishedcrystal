
	dw 00151 ;national dex no

	db 100, 100, 100, 100, 100, 100
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mew/front.dimensions"
	db SYNCHRONIZE, SYNCHRONIZE     ; abilities
	db SYNCHRONIZE    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
