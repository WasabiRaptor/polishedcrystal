
    dw 00676 ;national dex no

    db  75,  80,  60, 102,  65,  90
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 160 ; catch rate
    db 165 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/furfrou/front.dimensions"
    db FUR_COAT, FUR_COAT     ; abilities
    db FUR_COAT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
