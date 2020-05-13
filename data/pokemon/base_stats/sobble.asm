
	dw 00816 ;national dex no

	db  50,  40,  40,  70,  70,  40
	evs  0,   0,   0,   1,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/sobble/front.dimensions"
	db TORRENT, TORRENT     ; abilities
	db SNIPER    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
