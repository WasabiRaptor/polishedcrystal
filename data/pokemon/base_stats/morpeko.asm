
	dw 00877 ;national dex no

	db  58,  95,  58,  97,  70,  58
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, DARK ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/morpeko/front.dimensions"
	db HUNGER_SWITCH, HUNGER_SWITCH     ; abilities
	db HUNGER_SWITCH    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end
