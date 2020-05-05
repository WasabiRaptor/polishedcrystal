	dw 00492
	db 100, 103,  75, 127, 120,  75
    evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items

	INCBIN "gfx/pokemon/shaymin_sky/front.dimensions"
	db SERENE_GRACE, SERENE_GRACE	; abilities
	db SERENE_GRACE	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
