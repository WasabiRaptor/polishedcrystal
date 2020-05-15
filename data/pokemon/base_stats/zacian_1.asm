
	dw 01168 ;national dex no

	db  92, 170, 115, 148,  80, 115
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/zacian_1/front.dimensions"
	db INTREPID_SWORD, INTREPID_SWORD     ; abilities
	db INTREPID_SWORD    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
