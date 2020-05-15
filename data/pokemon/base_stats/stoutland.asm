
    dw 00508 ;national dex no

    db  85, 110,  90,  80,  45,  90
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 225 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/stoutland/front.dimensions"
    db INTIMIDATE, SAND_RUSH     ; abilities
    db SCRAPPY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
