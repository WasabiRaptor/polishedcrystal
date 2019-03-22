
	db  52,  65,  50,  38,  45,  50
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DARK ; type
	db 45 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 7 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/deino/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
	