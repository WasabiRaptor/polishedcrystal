
	dw 00475 ;national dex no

	db  68, 125,  65,  80,  65, 115
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gallade/front.dimensions"
	db STEADFAST, STEADFAST     ; abilities
	db JUSTIFIED    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMAN_LIKE, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
