	dw undefined ;national dex no
	
	db  40,  45,  40,  84,  55,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/cutiefly/front.dimensions"  
	db HONEY GATHER, SHIELD DUST     ; abilities
	db SWEET VEIL    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_BUG, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
