
	dw 00171 ;national dex no

	db 125,  58,  58,  67,  76,  76
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lanturn/front.dimensions"
	db VOLT_ABSORB, ILLUMINATE     ; abilities
	db WATER_ABSORB    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
