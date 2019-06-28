
	db  75, 110, 110,  80, 110, 105
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FAIRY ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/altaria/front.dimensions"
	db PIXILATE, 0	; abilities
	db 0	; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
