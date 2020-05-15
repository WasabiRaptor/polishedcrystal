
    dw 00801 ;national dex no

    db  80,  95, 115,  65, 130, 115
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, FAIRY ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/magearna/front.dimensions"
    db SOUL_HEART, SOUL_HEART     ; abilities
    db SOUL_HEART    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
