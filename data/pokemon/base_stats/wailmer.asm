	dw undefined ;national dex no
	
	db 130,  70,  35,  60,  70,  35
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/wailmer/front.dimensions"  
	db WATER VEIL, OBLIVIOUS     ; abilities
	db PRESSURE    ; hidden ability
	db Fluctuating ; growth rate
	dn EGG_FIELD, EGG_WATER_2 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
