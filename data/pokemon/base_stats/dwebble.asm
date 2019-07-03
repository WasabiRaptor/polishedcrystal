	dw 00557
	db  50,  65,  85,  55,  35,  35
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dwebble/front.dimensions"
	db STURDY, SHELL_ARMOR	; abilities
	db WEAK_ARMOR	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_MINERAL ; egg groups 

	; tm/hm learnset
	tmhm
	; end
	