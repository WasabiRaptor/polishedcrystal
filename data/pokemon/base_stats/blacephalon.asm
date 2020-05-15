
    dw 00806 ;national dex no

    db  53, 127,  53, 107, 151,  79
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, GHOST ; type
    db 30 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/blacephalon/front.dimensions"
    db BEAST_BOOST, BEAST_BOOST     ; abilities
    db BEAST_BOOST    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
