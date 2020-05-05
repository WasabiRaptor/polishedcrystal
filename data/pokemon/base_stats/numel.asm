
    dw 00322 ;national dex no

    db  60,  60,  40,  35,  65,  45
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, GROUND ; type
    db 255 ; catch rate
    db 61 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/numel/front.dimensions"
    db OBLIVIOUS, SIMPLE     ; abilities
    db OWN_TEMPO    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
