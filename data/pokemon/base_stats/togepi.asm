
	dw 00175 ;national dex no

	db  35,  20,  65,  20,  40,  65
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/togepi/front.dimensions"
	db HUSTLE, SERENE_GRACE     ; abilities
	db SUPER_LUCK    ; hidden ability
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
