	dw undefined ;national dex no
	
	db  50,  54,  54,  40,  66,  56
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf
	
	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/popplio/front.dimensions"  
	db TORRENT, TORRENT     ; abilities
	db LIQUID VOICE    ; hidden ability
	db MediumSlow ; growth rate
	dn EGG_WATER_1, EGG_FIELD ; egg groups
	
	; tm/hm learnset
	tmhm
	; end
