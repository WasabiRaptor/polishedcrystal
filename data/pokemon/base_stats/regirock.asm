
    dw 00377 ;national dex no

    db  80, 100, 200,  50,  50, 100
    evs  0,   0,   3,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, ROCK ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/regirock/front.dimensions"
    db CLEAR_BODY, CLEAR_BODY     ; abilities
    db STURDY    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
