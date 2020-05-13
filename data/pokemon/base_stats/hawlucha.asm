
	dw 00701 ;national dex no

	db  78,  92,  75, 118,  74,  63
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/hawlucha/front.dimensions"
	db LIMBER, UNBURDEN     ; abilities
	db MOLD_BREAKER    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
