
	dw 00849 ;national dex no

	db  75,  98,  70,  75, 114,  70
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, POISON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/toxtricity/front.dimensions"
	db PUNK_ROCK, PLUS     ; abilities
	db TECHNICIAN    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
