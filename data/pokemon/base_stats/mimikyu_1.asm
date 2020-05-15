
	dw 01148 ;national dex no

	db  55,  90,  80,  96,  50, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/mimikyu_1/front.dimensions"
	db DISGUISE, DISGUISE     ; abilities
	db DISGUISE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
