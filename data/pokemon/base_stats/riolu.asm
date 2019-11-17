	dw undefined ;national dex no
	
	db  40,  70,  40,  60,  35,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db FIGHTING, FIGHTING ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/riolu/front.dimensions"  
	db STEADFAST, INNER FOCUS     ; abilities
	db PRANKSTER    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
