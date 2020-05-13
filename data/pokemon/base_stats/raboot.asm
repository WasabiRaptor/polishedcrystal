
	dw 00814 ;national dex no

	db  65,  86,  60,  94,  55,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/raboot/front.dimensions"
	db BLAZE, BLAZE     ; abilities
	db LIBERO    ; hidden ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
