
    dw 00443 ;national dex no

    db  58,  70,  45,  42,  40,  45
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DRAGON, GROUND ; type
    db 45 ; catch rate
    db 60 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/gible/front.dimensions"
    db SAND_VEIL, SAND_VEIL     ; abilities
    db ROUGH_SKIN    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_MONSTER, EGG_DRAGON ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
