	dw 00611 ;national dex no

        db  66, 117,  70,  67,  40,  50
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DRAGON, DRAGON ; type
        db 60 ; catch rate
        db 144 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/fraxure/front.dimensions"
        db RIVALRY, MOLD_BREAKER     ; abilities
        db UNNERVE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
