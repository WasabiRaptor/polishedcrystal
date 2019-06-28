
	db  50,  80,  95,  10,  10,  45
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 255 ; catch rate
	db 58 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/bonsly/front.dimensions"
	db STURDY, ROCK_HEAD	; abilities
	db RATTLED	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
