	dw undefined ;national dex no
	
	db  44,  48,  65,  43,  50,  64
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/squirtle/front.dimensions"  
	db TORRENT, TORRENT     ; abilities
	db RAIN DISH    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
