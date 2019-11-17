	dw undefined ;national dex no
	
	db  78,  84,  78, 100, 109,  85
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIRE, FLYING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/charizard/front.dimensions"  
	db BLAZE, BLAZE     ; abilities
	db SOLAR POWER    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
