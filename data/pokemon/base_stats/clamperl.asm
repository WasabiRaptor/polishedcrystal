
    dw 00366 ;national dex no

    db  35,  64,  85,  32,  74,  55
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 255 ; catch rate
    db 69 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/clamperl/front.dimensions"
    db SHELL_ARMOR, SHELL_ARMOR     ; abilities
    db RATTLED    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_WATER_1 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
