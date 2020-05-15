
	dw 00090 ;national dex no

	db  30,  65, 100,  40,  45,  25
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shellder/front.dimensions"
	db SHELL_ARMOR, SKILL_LINK     ; abilities
	db OVERCOAT    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
