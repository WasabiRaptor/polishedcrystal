	dw 00545
	db  60, 100,  89, 112,  55,  69
    evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/scolipede/front.dimensions"
	db POISON_POINT, SWARM	; abilities
	db SPEED_BOOST	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
	