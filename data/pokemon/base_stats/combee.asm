	dw undefined ;national dex no
	
	db  30,  30,  42,  70,  30,  42
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db BUG, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/combee/front.dimensions"  
	db HONEY GATHER, HONEY GATHER     ; abilities
	db HUSTLE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
