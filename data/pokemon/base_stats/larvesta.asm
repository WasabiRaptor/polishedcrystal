
    dw 00636 ;national dex no

    db  55,  85,  55,  60,  50,  55
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, FIRE ; type
    db 45 ; catch rate
    db 72 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/larvesta/front.dimensions"
    db FLAME_BODY, FLAME_BODY     ; abilities
    db SWARM    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
