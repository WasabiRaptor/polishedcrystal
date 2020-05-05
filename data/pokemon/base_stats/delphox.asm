	dw 00655 ;national dex no

        db  75,  69,  72, 104, 114, 100
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, PSYCHIC ; type
        db 45 ; catch rate
        db 240 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/delphox/front.dimensions"
        db BLAZE, BLAZE     ; abilities
        db MAGICIAN    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
