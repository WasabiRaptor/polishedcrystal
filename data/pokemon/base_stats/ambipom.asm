
    dw 00424 ;national dex no

    db  75, 100,  66, 115,  60,  66
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 169 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/ambipom/front.dimensions"
    db TECHNICIAN, PICKUP     ; abilities
    db SKILL_LINK    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
