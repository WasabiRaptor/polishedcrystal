
	dw 00729 ;national dex no

	db  60,  69,  69,  50,  91,  81
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/brionne/front.dimensions"
	db TORRENT, TORRENT     ; abilities
	db LIQUID_VOICE    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
