
	db  38,  41,  40,  65,  50,  65
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db RAWST_BERRY, RAWST_BERRY ; items
	dn FEMALE_75, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/vulpix_alola/front.dimensions"
	db 0, 0	; abilities
	db 0	; hidden ability
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FIELD, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm
	; end
