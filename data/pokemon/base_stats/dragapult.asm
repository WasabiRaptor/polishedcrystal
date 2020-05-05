
	dw 00887 ;national dex no

	db  88, 120,  75, 142, 100,  75
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dragapult/front.dimensions"
	db CLEAR_BODY, INFILTRATOR     ; abilities
	db CURSED_BODY    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_AMORPHOUS, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
