
	dw 00844 ;national dex no

	db  72, 107, 125,  71,  65,  70
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sandaconda/front.dimensions"
	db SAND_SPIT, SHED_SKIN     ; abilities
	db SAND_VEIL    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
