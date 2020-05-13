
	dw 01098 ;national dex no

	db  60, 140,  50,  60, 140,  50
	evs  0,   2,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/aegislash_1/front.dimensions"
	db STANCE_CHANGE, STANCE_CHANGE     ; abilities
	db STANCE_CHANGE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
