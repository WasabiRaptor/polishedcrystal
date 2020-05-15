
	dw 00616 ;national dex no

	db  50,  40,  85,  25,  40,  65
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shelmet/front.dimensions"
	db HYDRATION, SHELL_ARMOR     ; abilities
	db OVERCOAT    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
