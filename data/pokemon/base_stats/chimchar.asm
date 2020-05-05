	dw 00390 ;national dex no

        db  44,  58,  44,  61,  58,  44
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FIRE ; type
        db 45 ; catch rate
        db 62 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/chimchar/front.dimensions"
        db BLAZE, BLAZE     ; abilities
        db IRON_FIST    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
