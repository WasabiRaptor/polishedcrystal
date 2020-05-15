
    dw 00442 ;national dex no

    db  50,  92, 108,  35,  92, 108
    evs  0,   0,   1,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db GHOST, DARK ; type
    db 100 ; catch rate
    db 170 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/spiritomb/front.dimensions"
    db PRESSURE, PRESSURE     ; abilities
    db INFILTRATOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
