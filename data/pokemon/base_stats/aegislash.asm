
	dw 00681 ;national dex no

	db  60,  50, 140,  60,  50, 140
	evs  0,   0,   2,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/aegislash/front.dimensions"
	db STANCE_CHANGE, STANCE_CHANGE     ; abilities
	db STANCE_CHANGE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
