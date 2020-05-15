
	dw 00280 ;national dex no

	db  28,  25,  25,  40,  45,  35
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ralts/front.dimensions"
	db SYNCHRONIZE, TRACE     ; abilities
	db TELEPATHY    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
