	dw 00181 ;national dex no

        db  90,  75,  85,  55, 115,  90
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, ELECTRIC ; type
        db 45 ; catch rate
        db 230 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ampharos/front.dimensions"
        db STATIC, STATIC     ; abilities
        db PLUS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
