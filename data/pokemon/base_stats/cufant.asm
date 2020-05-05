
	dw 00878 ;national dex no

	db  72,  80,  49,  40,  40,  49
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cufant/front.dimensions"
	db SHEER_FORCE, SHEER_FORCE     ; abilities
	db HEAVY_METAL    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
