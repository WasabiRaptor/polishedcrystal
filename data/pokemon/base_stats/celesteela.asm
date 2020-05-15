
    dw 00797 ;national dex no

    db  97, 101, 103,  61, 107, 101
    evs  0,   1,   1,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, FLYING ; type
    db 45 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/celesteela/front.dimensions"
    db BEAST_BOOST, BEAST_BOOST     ; abilities
    db BEAST_BOOST    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
