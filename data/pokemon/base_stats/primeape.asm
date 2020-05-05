
    dw 00057 ;national dex no

    db  65, 105,  60,  95,  60,  70
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIGHTING, FIGHTING ; type
    db 75 ; catch rate
    db 159 ; base exp
    db NO_ITEM, NO_ITEM ; items
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/primeape/front.dimensions"
    db VITAL_SPIRIT, ANGER_POINT     ; abilities
    db DEFIANT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
