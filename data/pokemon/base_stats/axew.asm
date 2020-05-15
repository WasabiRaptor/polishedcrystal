
	dw 00610 ;national dex no

	db  46,  87,  60,  57,  30,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/axew/front.dimensions"
	db RIVALRY, MOLD_BREAKER     ; abilities
	db UNNERVE    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
