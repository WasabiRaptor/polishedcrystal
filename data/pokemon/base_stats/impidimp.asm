
	dw 00859 ;national dex no

	db  45,  45,  30,  50,  55,  40
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/impidimp/front.dimensions"
	db PRANKSTER, FRISK     ; abilities
	db PICKPOCKET    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_HUMAN_LIKE ; egg groups

	; tm/hm learnset
	tmhm
	; end
