
	db  73, 100,  60,  65, 100,  60
    evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 160 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/seviper/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_DRAGON, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
	