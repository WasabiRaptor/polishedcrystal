
	dw 00468 ;national dex no

	db  85,  50,  95,  80, 120, 115
	evs  0,   0,   0,   0,   2,   1
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togekiss/front.dimensions"
	db HUSTLE, SERENE_GRACE     ; abilities
	db SUPER_LUCK    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end
