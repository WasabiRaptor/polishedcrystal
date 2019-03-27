
	db  40,  65,  40,  65,  80,  40
    evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 75 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_12_5, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/flabebe/front.dimensions" ; TEMP
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
