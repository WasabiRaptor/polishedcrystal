
	dw 00846 ;national dex no

	db  41,  63,  40,  66,  40,  30
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/arrokuda/front.dimensions"
	db SWIFT_SWIM, SWIFT_SWIM     ; abilities
	db PROPELLER_TAIL    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
