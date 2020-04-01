	dw undefined ;national dex no

	db  76,  48,  48,  34,  57,  62
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 50 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, NaN ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/shellos_west/front.dimensions"
	db STICKY HOLD, STORM DRAIN     ; abilities
	db SAND FORCE    ; hidden ability
	db MediumFast ; growth rate
	dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups

	; tm/hm learnset
	tmhm
	; end
