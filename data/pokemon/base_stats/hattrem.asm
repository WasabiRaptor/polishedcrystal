
	dw 00857 ;national dex no

	db  57,  40,  65,  49,  86,  73
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hattrem/front.dimensions"
	db HEALER, ANTICIPATION     ; abilities
	db MAGIC_BOUNCE    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
