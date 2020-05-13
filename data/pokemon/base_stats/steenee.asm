
	dw 00762 ;national dex no

	db  52,  40,  48,  62,  40,  48
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/steenee/front.dimensions"
	db LEAF_GUARD, OBLIVIOUS     ; abilities
	db SWEET_VEIL    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GRASS, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
