
    dw 00719 ;national dex no

    db  50, 100, 150,  50, 100, 150
    evs  0,   0,   1,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, FAIRY ; type
    db 3 ; catch rate
    db 255 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn GENDERLESS, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/diancie/front.dimensions"
    db CLEAR_BODY, CLEAR_BODY     ; abilities
    db CLEAR_BODY    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
