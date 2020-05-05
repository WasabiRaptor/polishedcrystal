
    dw 00210 ;national dex no

    db  90, 120,  75,  45,  60,  60
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FAIRY, FAIRY ; type
    db 75 ; catch rate
    db 158 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_75, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/granbull/front.dimensions"
    db INTIMIDATE, QUICK_FEET     ; abilities
    db RATTLED    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FIELD, EGG_FAIRY ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
