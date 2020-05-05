
    dw 00126 ;national dex no

    db  65,  95,  57,  93, 100,  85
    evs  0,   0,   0,   0,   2,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIRE ; type
    db 45 ; catch rate
    db 173 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_25, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/magmar/front.dimensions"
    db FLAME_BODY, FLAME_BODY     ; abilities
    db VITAL_SPIRIT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
