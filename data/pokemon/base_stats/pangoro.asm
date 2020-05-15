
	dw 00675 ;national dex no

	db  95, 124,  78,  58,  69,  71
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pangoro/front.dimensions"
	db IRON_FIST, MOLD_BREAKER     ; abilities
	db SCRAPPY    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
