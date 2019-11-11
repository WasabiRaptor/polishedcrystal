	dw undefined ;national dex no
	
	db  70,  55,  65,  85,  95, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf
	
	db PSYCHIC, NORMAL ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/indeedee_1/front.dimensions"  
	db OWN TEMPO, SYNCHRONIZE     ; abilities
	db PSYCHIC SURGE    ; hidden ability
	db Fast ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
