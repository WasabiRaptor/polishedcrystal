	dw 00753 ;national dex no

        db  40,  55,  35,  35,  50,  35
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, GRASS ; type
        db 190 ; catch rate
        db 50 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/fomantis/front.dimensions"
        db LEAF_GUARD, LEAF_GUARD     ; abilities
        db CONTRARY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
