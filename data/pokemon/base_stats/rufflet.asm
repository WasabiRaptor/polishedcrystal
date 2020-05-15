
	dw 00627 ;national dex no

	db  70,  83,  50,  60,  37,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/rufflet/front.dimensions"
	db KEEN_EYE, SHEER_FORCE     ; abilities
	db HUSTLE    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
