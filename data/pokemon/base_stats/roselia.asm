	dw 00315 ;national dex no

        db  50,  60,  45,  65, 100,  80
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, POISON ; type
        db 150 ; catch rate
        db 140 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/roselia/front.dimensions"
        db NATURAL_CURE, POISON_POINT     ; abilities
        db LEAF_GUARD    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FAIRY, EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
