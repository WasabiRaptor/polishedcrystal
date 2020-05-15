
	dw 00852 ;national dex no

	db  50,  68,  60,  32,  50,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/clobbopus/front.dimensions"
	db LIMBER, LIMBER     ; abilities
	db TECHNICIAN    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_HUMAN_LIKE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
