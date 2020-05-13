
	dw 00841 ;national dex no

	db  70, 110,  80,  70,  95,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DRAGON ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/flapple/front.dimensions"
	db RIPEN, GLUTTONY     ; abilities
	db HUSTLE    ; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_GRASS, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
