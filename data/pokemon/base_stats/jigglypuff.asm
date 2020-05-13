
    dw 00039 ;national dex no

    db 115,  45,  20,  20,  45,  25
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FAIRY ; type
    db 170 ; catch rate
    db 95 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 2 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
    db CUTE_CHARM, COMPETITIVE     ; abilities
    db FRIEND_GUARD    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FAIRY ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
