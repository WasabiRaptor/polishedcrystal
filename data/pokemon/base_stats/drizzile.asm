
	dw 00817 ;national dex no

	db  65,  60,  55,  90,  95,  55
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drizzile/front.dimensions"
	db TORRENT, TORRENT     ; abilities
	db SNIPER    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
