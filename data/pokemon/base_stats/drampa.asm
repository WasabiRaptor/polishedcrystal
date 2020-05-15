
	dw 00780 ;national dex no

	db  78,  60,  85,  36, 135,  91
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drampa/front.dimensions"
	db BERSERK, SAP_SIPPER     ; abilities
	db CLOUD_NINE    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
