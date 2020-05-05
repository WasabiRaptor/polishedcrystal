
	dw 00273 ;national dex no

	db  40,  40,  50,  30,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/seedot/front.dimensions"
	db CHLOROPHYLL, EARLY_BIRD     ; abilities
	db PICKPOCKET    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_GRASS ; egg groups

	; tm/hm learnset
	tmhm
	; end
