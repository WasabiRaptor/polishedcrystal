	dw undefined ;national dex no
	
	db  28,  25,  25,  40,  45,  35
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, FAIRY ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/ralts/front.dimensions"  
	db SYNCHRONIZE, TRACE     ; abilities
	db TELEPATHY    ; hidden ability
	db Slow ; growth rate
	dn EGG_HUMAN_LIKE, EGG_AMORPHOUS ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
