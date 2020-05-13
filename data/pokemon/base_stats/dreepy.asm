
	dw 00885 ;national dex no

	db  28,  60,  30,  82,  40,  30
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GHOST ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 8 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/dreepy/front.dimensions"
	db CLEAR_BODY, INFILTRATOR     ; abilities
	db CURSED_BODY    ; hidden ability
	db GROWTH_SLOW ; growth rate
	dn EGG_AMORPHOUS, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
