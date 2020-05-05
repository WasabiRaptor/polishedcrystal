
    dw 00055 ;national dex no

    db  80,  82,  78,  85,  95,  80
    evs  0,   0,   0,   0,   2,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 75 ; catch rate
    db 175 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/golduck/front.dimensions"
    db DAMP, CLOUD_NINE     ; abilities
    db SWIFT_SWIM    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
