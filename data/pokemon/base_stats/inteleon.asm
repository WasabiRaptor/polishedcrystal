
	dw 00818 ;national dex no

	db  70,  85,  65, 120, 125,  65
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/inteleon/front.dimensions"
	db TORRENT, TORRENT     ; abilities
	db SNIPER    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
