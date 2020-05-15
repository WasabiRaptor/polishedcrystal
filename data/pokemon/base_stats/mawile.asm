
	dw 00303 ;national dex no

	db  50,  85,  85,  50,  55,  55
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mawile/front.dimensions"
	db HYPER_CUTTER, INTIMIDATE     ; abilities
	db SHEER_FORCE    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
