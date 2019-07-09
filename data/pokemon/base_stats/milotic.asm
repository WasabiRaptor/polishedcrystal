	dw 00350
	db  95,  60,  79,  81, 100, 125
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/milotic/front.dimensions"
	db MARVEL_SCALE, COMPETITIVE	; abilities
	db CUTE_CHARM	; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_DRAGON, EGG_WATER_1 ; egg groups 

	; tm/hm learnset
	tmhm
	; end
	