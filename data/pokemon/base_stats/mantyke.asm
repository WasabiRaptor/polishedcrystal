
	dw 00458 ;national dex no

	db  45,  20,  50,  50,  60, 120
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mantyke/front.dimensions"
	db SWIFT_SWIM, WATER_ABSORB     ; abilities
	db WATER_VEIL    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
