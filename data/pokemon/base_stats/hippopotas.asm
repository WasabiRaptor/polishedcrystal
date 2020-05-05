
	dw 00449 ;national dex no

	db  68,  72,  78,  32,  38,  42
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 6 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hippopotas/front.dimensions"
	db SAND_STREAM, SAND_STREAM     ; abilities
	db SAND_FORCE    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
