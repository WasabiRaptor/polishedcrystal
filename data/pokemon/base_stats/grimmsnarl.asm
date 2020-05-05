
	dw 00861 ;national dex no

	db  95, 120,  65,  60,  95,  75
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/grimmsnarl/front.dimensions"
	db PRANKSTER, FRISK     ; abilities
	db PICKPOCKET    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
