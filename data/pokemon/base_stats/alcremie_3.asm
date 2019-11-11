	dw undefined ;national dex no
	
	db  65,  60,  75,  64, 110, 121
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/alcremie_3/front.dimensions"  
	db SWEET VEIL, SWEET VEIL     ; abilities
	db AROMA VEIL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FAIRY, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
