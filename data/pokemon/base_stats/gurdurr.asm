
	dw 00533 ;national dex no

	db  85, 105,  85,  40,  40,  50
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gurdurr/front.dimensions"
	db GUTS, SHEER_FORCE     ; abilities
	db IRON_FIST    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
