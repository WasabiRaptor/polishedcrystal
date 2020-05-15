
	dw 00712 ;national dex no

	db  55,  69,  85,  28,  32,  35
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/bergmite/front.dimensions"
	db OWN_TEMPO, ICE_BODY     ; abilities
	db STURDY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
