
	dw 00291 ;national dex no

	db  61,  90,  45, 160,  50,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ninjask/front.dimensions"
	db SPEED_BOOST, SPEED_BOOST     ; abilities
	db INFILTRATOR    ; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
