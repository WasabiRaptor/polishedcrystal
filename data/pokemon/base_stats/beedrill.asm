
    dw 00015 ;national dex no

    db  65,  90,  40,  75,  45,  80
    evs  0,   2,   0,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db BUG, POISON ; type
    db 45 ; catch rate
    db 178 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/beedrill/front.dimensions"
    db SWARM, SWARM     ; abilities
    db SNIPER    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
