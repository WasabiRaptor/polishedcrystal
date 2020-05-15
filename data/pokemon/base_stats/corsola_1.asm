
	dw 00949 ;national dex no

	db  60,  55, 100,  30,  65, 100
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/corsola_1/front.dimensions"
	db WEAK_ARMOR, WEAK_ARMOR     ; abilities
	db CURSED_BODY    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
