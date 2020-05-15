
	dw 00870 ;national dex no

	db  65, 100, 100,  75,  70,  60
	evs  0,   2,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities
	dn FEMALE_50, 5 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/falinks/front.dimensions"
	db BATTLE_ARMOR, BATTLE_ARMOR     ; abilities
	db DEFIANT    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
