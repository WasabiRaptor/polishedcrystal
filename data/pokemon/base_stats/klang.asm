
	dw 00600 ;national dex no

	db  60,  80,  95,  50,  70,  85
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/klang/front.dimensions"
	db PLUS, MINUS     ; abilities
	db CLEAR_BODY    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
