
    dw 00155 ;national dex no

    db  39,  52,  43,  65,  60,  50
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIRE ; type
    db 45 ; catch rate
    db 62 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/cyndaquil/front.dimensions"
    db BLAZE, BLAZE     ; abilities
    db FLASH_FIRE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
