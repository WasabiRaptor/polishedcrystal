
	db  40,  27,  60,  66,  37,  50
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 190 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cottonee/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
	