
	dw 00730 ;national dex no

	db  80,  74,  74,  60, 126, 116
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/primarina/front.dimensions"
	db TORRENT, TORRENT     ; abilities
	db LIQUID_VOICE    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
