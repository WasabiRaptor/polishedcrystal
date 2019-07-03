	dw 00457
	db  69,  69,  76,  91,  69,  86
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/lumineon/front.dimensions"
	db SWIFT_SWIM, STORM_DRAIN	; abilities
	db WATER_VEIL	; hidden ability
	db GROWTH_ERRATIC ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups 

	; tm/hm learnset
	tmhm
	; end
	