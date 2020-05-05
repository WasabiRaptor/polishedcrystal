	dw 00392 ;national dex no

        db  76, 104,  71, 108, 104,  71
        evs  0,   1,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FIGHTING ; type
        db 45 ; catch rate
        db 240 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/infernape/front.dimensions"
        db BLAZE, BLAZE     ; abilities
        db IRON_FIST    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
