
	dw 00915 ;national dex no

	db  52,  95,  55,  55,  58,  62
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/farfetch_d_1/front.dimensions"
	db STEADFAST, STEADFAST     ; abilities
	db SCRAPPY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
