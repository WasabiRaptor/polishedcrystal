	dw undefined ;national dex no
	
	db  45,  40,  40,  34,  50,  61
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf
	
	db FAIRY, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/milcery/front.dimensions"  
	db SWEET VEIL, SWEET VEIL     ; abilities
	db AROMA VEIL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_FAIRY, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
