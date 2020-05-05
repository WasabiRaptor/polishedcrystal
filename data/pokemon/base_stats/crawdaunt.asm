
	dw 00342 ;national dex no

	db  63, 120,  85,  55,  90,  55
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/crawdaunt/front.dimensions"
	db HYPER_CUTTER, SHELL_ARMOR     ; abilities
	db ADAPTABILITY    ; hidden ability
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm
	; end
