
    dw 00769 ;national dex no

    db  55,  55,  80,  15,  70,  45
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GHOST, GROUND ; type
    db 140 ; catch rate
    db 64 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sandygast/front.dimensions"
    db WATER_COMPACTION, WATER_COMPACTION     ; abilities
    db SAND_VEIL    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
