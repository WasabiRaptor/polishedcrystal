	dw undefined ;national dex no
	
	db  50,  80,  95,  10,  10,  45
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db ROCK, ROCK ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/bonsly/front.dimensions"  
	db STURDY, ROCK HEAD     ; abilities
	db RATTLED    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
