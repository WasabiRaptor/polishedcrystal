
	dw 00874 ;national dex no

	db 100, 125, 135,  70,  20,  20
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/stonjourner/front.dimensions"
	db POWER_SPOT, POWER_SPOT     ; abilities
	db POWER_SPOT    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
