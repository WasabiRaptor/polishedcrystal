	dw 00520 ;national dex no

        db  62,  77,  62,  65,  50,  42
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, FLYING ; type
        db 120 ; catch rate
        db 125 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tranquill/front.dimensions"
        db BIG_PECKS, SUPER_LUCK     ; abilities
        db RIVALRY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
