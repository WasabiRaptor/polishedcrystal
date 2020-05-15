
	dw 00292 ;national dex no

	db   1,  90,  45,  40,  30,  30
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shedinja/front.dimensions"
	db WONDER_GUARD, WONDER_GUARD     ; abilities
	db WONDER_GUARD    ; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
