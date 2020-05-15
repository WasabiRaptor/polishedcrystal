
	dw 00792 ;national dex no

	db 137, 113,  89,  97, 137, 107
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 15 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lunala/front.dimensions"
	db SHADOW_SHIELD, SHADOW_SHIELD     ; abilities
	db SHADOW_SHIELD    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
