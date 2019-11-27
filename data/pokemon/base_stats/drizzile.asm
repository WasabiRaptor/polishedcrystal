	dw undefined ;national dex no
	
	db  65,  60,  55,  90,  95,  55
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/drizzile/front.dimensions"  
	db TORRENT, TORRENT     ; abilities
	db SNIPER    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
