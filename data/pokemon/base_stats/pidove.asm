
	dw 00519 ;national dex no

	db  50,  55,  50,  43,  36,  30
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pidove/front.dimensions"
	db BIG_PECKS, SUPER_LUCK     ; abilities
	db RIVALRY    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
