	dw 00000 ;national dex no

	db 100, 100, 100, 100, 100, 100
    evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/pokemon_egg/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; tm/hm learnset
	tmhm
	; end
