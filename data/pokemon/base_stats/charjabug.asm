
	dw 00737 ;national dex no

	db  57,  82,  95,  36,  55,  75
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/charjabug/front.dimensions"
	db BATTERY, BATTERY     ; abilities
	db BATTERY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
