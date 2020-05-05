
    dw 00200 ;national dex no

    db  60,  60,  60,  85,  85,  85
    evs  0,   0,   0,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db GHOST, GHOST ; type
    db 45 ; catch rate
    db 87 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/misdreavus/front.dimensions"
    db LEVITATE, LEVITATE     ; abilities
    db LEVITATE    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
