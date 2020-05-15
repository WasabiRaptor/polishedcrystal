
	dw 00176 ;national dex no

	db  55,  40,  85,  40,  80, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togetic/front.dimensions"
	db HUSTLE, SERENE_GRACE     ; abilities
	db SUPER_LUCK    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
