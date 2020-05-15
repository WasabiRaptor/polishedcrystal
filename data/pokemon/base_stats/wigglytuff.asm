
    dw 00040 ;national dex no

    db 140,  70,  45,  45,  85,  50
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FAIRY ; type
    db 50 ; catch rate
    db 196 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 2 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/wigglytuff/front.dimensions"
    db CUTE_CHARM, COMPETITIVE     ; abilities
    db FRISK    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FAIRY ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
