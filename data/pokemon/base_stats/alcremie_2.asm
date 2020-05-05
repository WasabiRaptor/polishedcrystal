
	dw 01158 ;national dex no

	db  65,  60,  75,  64, 110, 121
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/alcremie_2/front.dimensions"
	db SWEET_VEIL, SWEET_VEIL     ; abilities
	db AROMA_VEIL    ; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
