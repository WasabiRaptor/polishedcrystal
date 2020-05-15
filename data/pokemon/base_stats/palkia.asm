
    dw 00484 ;national dex no

    db  90, 120, 100, 100, 150, 120
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, DRAGON ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/palkia/front.dimensions"
    db PRESSURE, PRESSURE     ; abilities
    db TELEPATHY    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
