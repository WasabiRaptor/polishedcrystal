	dw undefined ;national dex no
	
	db  85, 135, 130,  25,  60,  80
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/gigalith/front.dimensions"  
	db STURDY, SAND STREAM     ; abilities
	db SAND FORCE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
